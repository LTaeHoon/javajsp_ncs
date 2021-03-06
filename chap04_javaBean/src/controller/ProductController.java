package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ProductBean;

/**
 * Servlet implementation class ProductController
 */
@WebServlet("/ProductController")
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
		request.setCharacterEncoding("UTF-8");  //이전 페이지에서 오는 변수 중 한글이 있을 경우 인코딩 해줘야 함
		
		String sabun = request.getParameter("sabun");
		String saname = request.getParameter("saname");
		String procode = request.getParameter("procode");
		String proname = request.getParameter("proname");
		int price = Integer.parseInt(request.getParameter("price"));
		
		ProductBean pro = new ProductBean(); //javaBean 객체 생성
		
		pro.setSabun(sabun);
		pro.setSaname(saname);
		pro.setProcode(procode);
		pro.setProname(proname);
		pro.setPrice(price);
		
		if(pro.check()){ //sabun, saname이 일치하는 경우
		  String image="";
		  if(pro.getProname().equals("냉장고")){
			  image="refrigerator.png";		  
		  }else if(pro.getProname().equals("세탁기")){
			   image="washer.png";		   
		  }else if(pro.getProname().equals("HDTV")){
			   image="hdtv.png";		   
		  }
		  pro.setImage(image);
			  
		  HttpSession session = request.getSession();
			
		  //sabun,saname session key 생성
		  session.setAttribute("sabun", pro.getSabun());
		  session.setAttribute("saname", pro.getSaname());
		  //pro 객체 키 생성 다음 페이지로 넘김
		  request.setAttribute("pro", pro);
		  // 원하는 특정 페이지로 이동
		  RequestDispatcher rd = request.getRequestDispatcher("/view/ProductOutput.jsp");
		  rd.forward(request, response); //실제 페이지로 포워딩
		}else{
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('일치하는 정보가 없습니다.')");
			out.println("location.href='./view/ProductInput.jsp'");
			out.println("</script>");	
		}
		
	}

}
