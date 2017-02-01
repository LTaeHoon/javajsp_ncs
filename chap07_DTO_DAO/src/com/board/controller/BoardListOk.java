package com.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.model.BoardDAO;
import com.board.model.BoardDTO;

/**
 * Servlet implementation class BoardListOk
 */
@WebServlet("/list.do")
public class BoardListOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardListOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 자료실의 목록을 보여주는 컨트롤러 클래스
		BoardDAO dao = new BoardDAO(); // 디비 연동 객체 생성
		
		int page=1;     // 현재 페이지 수(초기값 : 1페이지) 
		int limit = 10; // 페이지 목록수(10개)
		
		// page : boardList.jsp에서 넘어온 페이지 번호
		if(request.getParameter("page") != null)
			page=Integer.parseInt(request.getParameter("page"));
	
		// 총 레코드 수 
		int listcount = dao.getListCount(); // count(*) 함수 이용 
		// 게시물 목록 받기		
		List<BoardDTO> boardlist = dao.getBoardList(page, limit); // 의사컬럼 이용  
		// 총페이지 수 구하는 수식 = 총레코드수/페이지목록수
		int maxpage = (int)((double)listcount/limit+0.95);
		// 시작 페이지 구하는 수식 : 현재페이지 1~10 -> 1, 11~20 -> 11
		int startpage = (((int)((double)page/10+0.9))-1)*10+1; // (10/10)+0.9-1=0*10+1=1
		// 끝 페이지 구하는 수식 : 시작페이지 1~10 -> 10, 11 이상 -> 시작페이지+9(11+9=20)  
		int endpage = maxpage;
		if(endpage > startpage+10-1) endpage = startpage+10-1;
		
		request.setAttribute("page",page); // 페이지 번호(화면에 보여줄 page)
		request.setAttribute("maxpage", maxpage); // 총페이지 수
		request.setAttribute("startpage", startpage);// 시작페이지
		request.setAttribute("endpage", endpage); // 끝 페이지
		request.setAttribute("listcount",listcount); // 총레코드 수
		request.setAttribute("boardlist",boardlist); // 게시물 목록
		request.setAttribute("limit", limit); // 페이지 목록 수
		
		/* view page 포워딩 : forward.setRedirect(false) */
		RequestDispatcher rd 
		  = request.getRequestDispatcher("./board_ver2/boardList.jsp");
		rd.forward(request, response);
	}

}
