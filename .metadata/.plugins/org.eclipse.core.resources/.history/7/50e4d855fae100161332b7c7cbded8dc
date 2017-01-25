package join;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FindOk
 */
@WebServlet("/find.do")
public class FindOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		
		JoinDAO dao = new JoinDAO();
		// search -> list
		List<JoinDTO> list = dao.studentfind(name); 
		
		request.setAttribute("list", list);
		RequestDispatcher dis =
		  request.getRequestDispatcher("join/joinOutput.jsp");
		dis.forward(request, response); // 포워딩
		
	}

}





