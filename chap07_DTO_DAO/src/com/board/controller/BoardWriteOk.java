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
 * Servlet implementation class BoardWriteOk
 */
@WebServlet("/insert.do")
public class BoardWriteOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardWriteOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. boardWrite.jsp(4개 파라미터 받기)
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("board_name");
		String title = request.getParameter("board_title");
		String cont = request.getParameter("board_cont");
		String pwd = request.getParameter("board_pwd");
		// 2. 파라미터를 DTD 객체로 묶음
		BoardDTO dto = new BoardDTO();
		dto.setBoard_name(name);
		dto.setBoard_title(title);
		dto.setBoard_cont(cont);
		dto.setBoard_pwd(pwd);
		// 3. DAO의 insertBoard(dto) 메서드 호출
		BoardDAO dao = new BoardDAO();
		int re = dao.insertBoard(dto);
		// 4. 메서드 결과에 따라서 view page 이동
		// -> 레코드 삽입 성공 : boardList.jsp 이동
		// -> 레코드 삽입 실패 : boardWrite.jsp 이동	
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if(re>=0){ //레코드 삽입 성공
			out.println("<script>");
			out.println("alert('레코드 삽입 성공')");
			//out.println("location.href='board/boardList.jsp'"); //ver1
			response.sendRedirect("list.do"); //ver2
			out.println("</script>");
		}else{
			out.println("<script>");
			out.println("alert('레코드 삽입 실패')");
			out.println("history.back()");
			out.println("</script>");
		}
		
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
