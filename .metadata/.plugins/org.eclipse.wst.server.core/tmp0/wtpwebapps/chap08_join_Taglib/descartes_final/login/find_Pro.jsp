<%@page import="db.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = null;
	
	try{
		DBConnection db = new DBConnection();
		con = db.con;
		sql = "select * from jsp_member where id = ? and name = ?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		rs = pstmt.executeQuery();
		if(rs.next()){
			String password = rs.getString("pwd");
			request.setAttribute("password", password);
			RequestDispatcher rd = 
					request.getRequestDispatcher("find_Pwd.jsp");
			rd.forward(request, response);
			
		}else{
			out.println("<script>");
			out.println("alert('해당정보가 없습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
%>
