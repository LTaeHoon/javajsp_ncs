

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletTest01
 */
@WebServlet("/ServletTest01")
public class ServletTest01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletTest01() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    /*
     * 서블릿(Servlet) 언어 특징
     * 1. java 기반 웹프로그래밍 언어
     * 2. java 코드가 HTML 코드 포함
     * 3. HttpServlet 상속으로 만들어진 java 클래스
     * 4. java의 모든 API 사용 가능
     * 5. Controller 영역의 페이지 작성
     *
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// method 생략 시는 기본으로 get 방식으로 적용
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// 단계1 : 문자셋 인코딩 방식을 지정
		response.setContentType("text/html;charset=UTF-8");
		
		// 단계2 : 웹 브라우저에 결과 출력
		PrintWriter out = response.getWriter();
		String name = "홍길동";
		int age = 35;
		
		out.println("<html>");
		out.println("<body>");
		out.println("<h2> 서블릿 출력 결과 </h2>");
		out.println("이름 : " + name + "<br>"); //out 객체에서 제공하는 println은 줄바꿈 기능 없음
		out.println("나이 : " + age + "<br>");
		out.println("</body>");
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
