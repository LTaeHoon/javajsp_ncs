

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// method = "get" 데이터 전송 방식 데이터 처리 메서드
		//request : 사용자 요청 정보 처리
		//response : 사용자 요청에 대한 응답 정보 처리
		
		// 1. 사용자 데이터 받기 (id,pwd)
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		// 2. id/pwd 출력하기
		response.setContentType("text/html;charset=UTF-8");
		// 브라우저에 출력할 out 객체 생성
		PrintWriter out = response.getWriter();
		// println()함수로 출력
		out.println("<h2> 사용자 id/pwd 정보</h2>");
		out.println("<hr>"); //선그리기 태그
		out.println("사용자 아이디 : "+id+"<br>"); //<br> 줄바꿈
		out.println("사용자 비번 : "+pwd);
		out.println("<hr>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// method="post"인 경우 처리하는 메서드
		//doGet(request, response);
		// 1. 사용자 데이터 받기 (id,pwd)
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		// 2. id/pwd 출력하기
		response.setContentType("text/html;charset=UTF-8");
		// 브라우저에 출력할 out 객체 생성
		PrintWriter out = response.getWriter();
		// println()함수로 출력
		out.println("<h2> 사용자 id/pwd 정보</h2>");
		out.println("<hr>"); //선그리기 태그
		out.println("사용자 아이디 : "+id+"<br>"); //<br> 줄바꿈
		out.println("사용자 비번 : "+pwd);
		out.println("<hr>");
	}

}
