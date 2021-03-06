

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletTest02
 */
@WebServlet("/ServletTest02")
public class ServletTest02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletTest02() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// 1~100까지 합 구하기
		int sum =0;
		for(int i=1;i<=100;i++){
			sum +=i;	
		}
		
		System.out.printf("1~100 = %d\n",sum); //콘솔 출력
		//문자셋 인코딩 방식을 지정
		response.setContentType("text/html;charset=UTF-8");
		//브라우져 출력
		PrintWriter out = response.getWriter();
		out.println("<h2>1~100까지 합 <br>");
		out.printf("%d",sum);
		out.println("</h2>");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
