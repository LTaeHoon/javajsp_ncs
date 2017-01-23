<%@page import="db.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- joinForm.jsp(5개) -> joinProcess.jsp -->
<%
  request.setCharacterEncoding("utf-8");
  String id = request.getParameter("id");
  String pass = request.getParameter("pass");
  String name = request.getParameter("name");
  String jumin1 = request.getParameter("jumin1");
  String jumin2 = request.getParameter("jumin2");
  String email1 = request.getParameter("email1");
  String email2 = request.getParameter("email2");
  String email = email1+"@"+email2; 
  
  Connection con = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  String sql = null;
  
  try{
	  // DBCP 방식으로 con 객체 생성
	  DBConnection db = new DBConnection();
	  con = db.con;
	  // 6개 파리미터를 db table(jsp_member)에 저장->리턴 값으로 성공여부
	  sql = "insert into jsp_member2 values(?,?,?,?,?,?)";
	  pstmt = con.prepareStatement(sql);
	  pstmt.setString(1, id);
	  pstmt.setString(2, pass);
	  pstmt.setString(3, name);
	  pstmt.setString(4, jumin1);
	  pstmt.setString(5, jumin2);
	  pstmt.setString(6, email);
	  int re = pstmt.executeUpdate();
	  if(re >= 1){ // 회원가입 성공 시
		  out.println("<script>");
		  out.println("alert('회원 가입 성공!!')");
		  out.println("location.href='loginForm.jsp'");
		  out.println("</script>");
	  }else{ // 회원가입 실패 시
		  out.println("<script>");
		  out.println("alert('회원 가입 실패!!')");
		  out.println("location.href='joinForm.jsp'");
		  out.println("</script>");
	  }
	  pstmt.close(); con.close();
	  
  }catch(Exception e){
	  e.printStackTrace();
  }
%>











