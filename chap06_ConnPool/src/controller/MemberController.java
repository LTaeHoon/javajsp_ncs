package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import model.MemberDAO;
import model.MemberDTO;

/**
 * Servlet implementation class MemberController
 */
@WebServlet("/join.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MemberDAO dao = new MemberDAO();
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		String jumin1 = request.getParameter("jumin1");
		String jumin2 = request.getParameter("jumin2");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String email = email1+'@'+email2;

		MemberDTO dto = new MemberDTO();
		dto.setId(id); dto.setPassword(pass); dto.setName(name);
		dto.setJumin1(jumin1);dto.setJumin2(jumin2); dto.setEmail(email);
		
		boolean result=dao.insert(dto);
		request.setAttribute("result", result);
		response.setContentType("text/html;charset=UTF-8");
		//브라우져 출력
		PrintWriter out = response.getWriter();
		
		if(result){
			out.println("<script>");
			out.println("alert('회원가입 성공')");
			out.println("location.href='"+request.getContextPath()+"/member_ver2/loginForm.jsp'");
			out.println("</script>");
			
			//아래 이동 방법1,2 사용시 스크립트 동장 안함
			//페이지 이동 방법1
			//response.sendRedirect("./member_ver2/loginForm.jsp");
			//페이지 이동방법2
			/*RequestDispatcher rd = 
				request.getRequestDispatcher("./member/loginForm.jsp");
				rd.forward(request,response); //view page 이동
*/		}else{
			RequestDispatcher rd = 
				request.getRequestDispatcher("./member/joinForm.jsp");
				rd.forward(request,response); //view page 이동
			
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
