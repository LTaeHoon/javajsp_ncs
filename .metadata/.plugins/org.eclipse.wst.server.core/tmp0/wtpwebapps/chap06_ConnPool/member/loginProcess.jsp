<%@page import="db.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- loginForm.jsp(2) -> loginProcess.jsp -->

<%
   String id = request.getParameter("id");
   String pass = request.getParameter("pass");
   
   Connection con = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   String sql = null;
   
   try{
	   DBConnection db = new DBConnection();
	   con = db.con;
	   // 조건 검색
	   sql = "select * from jsp_member2 where id =?";
	   pstmt = con.prepareStatement(sql);
	   pstmt.setString(1, id);
	   rs = pstmt.executeQuery();
	   if(rs.next()){
		   String db_pass = rs.getString("password");
		   if(pass.equals(db_pass)){
			   // id/pass 모두 일치 -> id 이용 session 생성
			   session.setAttribute("id", id);
			   out.println("<script>");
			   out.println("location.href='main.jsp'");
			   out.println("</script>");
		   }else{
			   out.println("<script>");
			   out.println("alert('비번 틀림')");
			   out.println("location.href='loginForm.jsp'");
			   out.println("</script>");
		   }
	   }else{
		   out.println("<script>");
		   out.println("alert('아이디 틀림')");
		   out.println("history.back()");
		   out.println("</script>"); 
	   }
   pstmt.close(); rs.close(); con.close();	   
   }catch(Exception e){
	   e.printStackTrace();
   }
   
   
   

%>








