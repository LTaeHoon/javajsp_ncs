<%@page import="db.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("password");
	String name = request.getParameter("name");
	
    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    String sql = null;
    
 	
    try{
    	DBConnection db = new DBConnection();
     	con=db.con;
    	sql="select * from jsp_member where id=?";
    	pstmt = con.prepareStatement(sql);
    	pstmt.setString(1,id);
    	rs=pstmt.executeQuery();
    	if(rs.next()){  //이미 같은 아이디가 있는 경우
    	
    		   out.println("<script>");
			   out.println("alert('다른 아이디를 사용하세요')");
			   out.println("location.href='member_form.jsp'");
			   out.println("</script>");
    	}else{
    		sql="insert into jsp_member values(?,?,?)";
    		pstmt = con.prepareStatement(sql);
    		pstmt.setString(1,id);
    		pstmt.setString(2,pwd);
    		pstmt.setString(3,name);
    		int re = pstmt.executeUpdate();
    		if(re>=1){
    		   out.println("<script>");
   			   out.println("alert('회원가입성공')");
   			   out.println("location.href='../login/login_form.jsp'");
   			   out.println("</script>");
    		}else{
    			 out.println("<script>");
     			   out.println("alert('회원정보입력 실패')");
     			   out.println("history.back()");
     			   out.println("</script>");
    		}
    	}
    	pstmt.close();rs.close();con.close();
    }catch(Exception e){
    	e.printStackTrace();
    }
%>