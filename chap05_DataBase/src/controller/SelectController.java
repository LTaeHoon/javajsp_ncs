package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CRUD_DAO;
import model.CRUD_DTO;

/**
 * Servlet implementation class SelectController
 */
@WebServlet("/select.do")
public class SelectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//method = "post/get" 둘 다 처리 할 수 있는 method
		//1. db 연동 객체
		CRUD_DAO dao = new CRUD_DAO(); //con객체 생성
		//2. model 객체 생성
		List<CRUD_DTO> list = dao.select(); //전체 테이블 목록 반환(list<CURD_DTO>)
		//3. key생성 -> view page 반환
		request.setAttribute("list", list);
		//4. ./db_view/SelectPage.jsp
		RequestDispatcher rd = 
		request.getRequestDispatcher("./db_view/SelectPage.jsp");
		rd.forward(request,response); //view page 이동
		
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
