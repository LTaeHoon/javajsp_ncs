<%@page import="db.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--member_list.jsp(id) -> member_delete.jsp(id 삭제) -->

<%
  //session 속성이 admin & 속성 유효 검증
  String id = (String)session.getAttribute("id");
  if(id==null || !id.equals("admin")){
	   out.println("<script>");	   
	   out.println("location.href='loginForm.jsp'");
	   out.println("</script>");	   
  }   
  
  String user_id = request.getParameter("id");
  
  Connection con = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  String sql = null;
  
	try {
		DBConnection db = new DBConnection();
		con = db.con;
		// 자동커밋 해제
		con.setAutoCommit(false);
		
		sql = "delete from jsp_member2 where id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, user_id);
		pstmt.executeUpdate(); 						
		// sql2
		sql="select * from jsp_member2 where id='admin'";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery(); // select문 실행
		if(rs.next()){ // true -> admin 존재
			con.commit(); // 일반 사용자 삭제 시 커밋 수행	 		
			out.println("<script>");
			out.println("location.href='member_list.jsp'");
			out.println("</script>");
		}else{
			con.rollback(); // 관리자가 삭제된 경우 롤백 처리
			out.println("<script>");
			out.println("alert('관리자 계정을 삭제할 수 없습니다.')");
			out.println("location.href='member_list.jsp'");
			out.println("</script>");
		}		
		con.setAutoCommit(true);
		con.close(); rs.close(); pstmt.close(); 
	} catch (Exception e) {		
		e.printStackTrace();
	}	
%>

   
   
   
   
   
   

