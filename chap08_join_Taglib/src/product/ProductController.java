package product;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProductController
 */
@WebServlet("/product.do")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String productName = request.getParameter("name");
		ProductSearch search = new ProductSearch();
		//상품정보 반환 받음
		String productInfo = search.psearch(productName);
		// key 생성
		request.setAttribute("productInfo", productInfo);
		
		//view page 리턴
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if(productInfo==null){
			out.println("<script>");
			out.println("alert('해당 상품이 없습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}else{
			//view page에 key 포워딩
			RequestDispatcher rd=
			request.getRequestDispatcher("exam/product.jsp");
			rd.forward(request, response);
		}
	}

}
