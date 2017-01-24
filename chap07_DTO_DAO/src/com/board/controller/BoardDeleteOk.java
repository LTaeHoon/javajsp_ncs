package com.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.model.BoardDAO;

/**
 * Servlet implementation class BoardDeleteOk
 */
@WebServlet("/delete.do")
public class BoardDeleteOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardDeleteOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 파라미터 받기
		int board_no = Integer.parseInt(request.getParameter("board_no"));
		String pwd = request.getParameter("pwd");
		
		// 2. DAO 메서드 호출
		BoardDAO dao = new BoardDAO();
		int re = dao.board_delete(board_no, pwd);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		if(re>=1){
			out.println("<script>");
			out.println("alert('삭제되었습니다.')");
			out.println("location.href='board/boardList.jsp'");
			out.println("</script>");
		}else{
			out.println("<script>");
			out.println("alert('삭제실패~')");
			out.println("history.back()");
			out.println("</script>");
		}
		
		
	}

}
