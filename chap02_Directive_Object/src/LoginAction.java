

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap02_Directive_Object.LoginDAO;

/**
 * Servlet implementation class LoginAction
 */
@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginAction() {
        super();
        // TODO Auto-generated constructor stub
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
		//method = "post"
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String save = request.getParameter("save"); //check box
		
		// LoginDAO 객체 생성
		LoginDAO dao = new LoginDAO();
		String result = ""; //로그인 결과
		
		if(save != null){ //체크한 경우		
			result = dao.login(id, pwd); //로그인 결과 리턴
			if(result.equals("로그인 성공")){
				request.setAttribute("result", result); // 키 생성
				
				// id/pwd 쿠키 생성
				Cookie idCookie = new Cookie("id",id); //id 쿠키
				idCookie.setMaxAge(60*10); //생존 시간 10분
				response.addCookie(idCookie); //쿠키 등록
	
				Cookie pwdCookie = new Cookie("pwd",pwd); //pwd 쿠키
				pwdCookie.setMaxAge(60*10); //생존 시간 10분
				response.addCookie(pwdCookie); //쿠키 등록
			}else{
				result = "로그인 실패";
				request.setAttribute("result", result);
			}
		}else{ //체크 안한 경우
			result =dao.login(id, pwd);
			if(result.equals("로그인 성공")){
				result = "로그인 성공";
				request.setAttribute("result", result);
			}else{
				result = "로그인 실패";
				request.setAttribute("result", result);
			}
		}//if end
		
		//로그인 결과를 특정 페이지(/cookie/example/login_result.jsp)로 넘김
		RequestDispatcher rd = request.getRequestDispatcher("/cookie/example/login_result.jsp");
		rd.forward(request, response); //실제 페이지로 포워딩
	}//method end

}
