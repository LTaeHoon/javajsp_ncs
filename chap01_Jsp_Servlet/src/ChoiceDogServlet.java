

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChoiceDogServlet
 */
@WebServlet("/choiceDog")
public class ChoiceDogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChoiceDogServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String dog[] = request.getParameterValues("dog"); //배열 객체 받기
		System.out.println("배열길이"+dog.length);
	
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		try{
		out.println("<body>");
		out.println("<table bgcolor='black'>");
		out.println("<tr>");// 1행
		for(int i=0;i<dog.length;i++){
			out.println("<td>");
			out.println("<img src='"+dog[i]+"' width='200'>");
			out.println("</img>");
			out.println("</td>");
		}
		out.println("</tr>");
		out.println("</table>");
		out.println("</body>");
		}catch(Exception e){
			out.println("<script>");
			out.println("alert('선택항목이 없습니다.')");
			out.println("history.back()"); //이전 페이지 이동
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
