<%@page import="db.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	
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
    	if(rs.next()){  //해당 아이디가 있는 경우
    		if(pwd.equals(rs.getString("pwd"))){ //비번이 맞은 경우
    		  
    		   session.setAttribute("id", id); //id 키 생성
    		   session.setAttribute("pwd",pwd);
    		   session.setAttribute("name", rs.getString("name"));
    		   out.println("<script>");
 			   out.println("alert('환영합니다.')");	
 			   out.println("window.close()"); 
 			   out.println("opener.location.replace('login_main.jsp')");
			   out.println("</script>");
 			  
    		}else{
    		   out.println("<script>");
  			   out.println("alert('비밀번호가 틀렸습니다.')");
  			   out.println("history.back()");
  			   out.println("</script>");
    		}
    		   
    	}else{
   		   out.println("<script>");
		   out.println("alert('아이디를 잘못 입력하셨습니다.')");
		   out.println("history.back()");
		   out.println("</script>");
   	
    	}
    	rs.close();pstmt.close();con.close();
    }catch(Exception e){
    	e.printStackTrace();
    }
%>