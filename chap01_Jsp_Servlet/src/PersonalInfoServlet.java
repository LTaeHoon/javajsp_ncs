

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PersonalInfoServlet
 */
@WebServlet("/PersonalInfoServlet")
public class PersonalInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PersonalInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String car = request.getParameter("car");
		String option[] =request.getParameterValues("option");
		System.out.println(name);
		System.out.println(gender);
		System.out.println(car);
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		out.printf("<h2> %s 님의 차종 취향 </h2>",name);
		out.println("<table>");
		out.println("<tr>");
		out.println("<td>");
		out.printf("이름: %s",name);
		out.println("</td>");
		out.println("<td rowspan='2'>");
		
		out.println("<img src='"+car+"' width='200' height='300'>");
		out.println("</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>");
		out.printf("성별: %s",gender);
		out.println("</td>");
		
		out.println("</tr>");
		
		out.println("</table>");
		out.println("수신설정<br>");
		
		
		try{
			if(option.length==2){
				out.println("메일설정 : YES , SMS 수신 : YES");	
			}else if(option.length==1){
				if(option[0].equals("email")){
					out.println("메일설정 : YES , SMS 수신 : NO");		
				}
				if(option[0].equals("sms")){
					out.println("메일설정 : NO , SMS 수신 : YES");	
				}
				
			}
		}catch(Exception e){
			out.println("<script>");
			out.println("alert('메일 수신이나 SMS 수신 선택하세요')");
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
