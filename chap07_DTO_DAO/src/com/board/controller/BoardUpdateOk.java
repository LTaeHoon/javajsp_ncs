package com.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.model.BoardDAO;
import com.board.model.BoardDTO;

/**
 * Servlet implementation class BoardUpdateOk
 */
@WebServlet("/update.do")
public class BoardUpdateOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardUpdateOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 파라미터 받기(인코딩 방식 처리)
		request.setCharacterEncoding("utf-8");
		BoardDTO dto = new BoardDTO();
		dto.setBoard_no(Integer.parseInt(request.getParameter("board_no")));
		dto.setBoard_name(request.getParameter("board_name"));
		dto.setBoard_title(request.getParameter("board_title"));
		dto.setBoard_cont(request.getParameter("board_cont"));
		
		//2. dao의 메서드 호출
		BoardDAO dao = new BoardDAO();
		int re = dao.board_update(dto);		
		
		//3. 리턴값으로 view page 이동
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		if(re>=1){
			out.println("<script>");
			out.println("alert('수정되었습니다.')");
			out.println("location.href='board/boardList.jsp'");
			out.println("</script>");
		}else{
			out.println("<script>");
			out.println("alert('수정실패~')");
			out.println("history.back()");
			out.println("</script>");
		}
		
		
	}

}
