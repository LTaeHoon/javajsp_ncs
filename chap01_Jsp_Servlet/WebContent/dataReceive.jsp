<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- html 영역 -->

<% //jsp 영역 : jsp 문법(java) 사용 영역

  // 1. 사용자의 id/pwd 변수 받기
  String id = request.getParameter("id");  //name = "id"
  String pwd = request.getParameter("pwd");  //name = "pwd"
    
  // 2. db 내용과 비교 : 로그인 성공 여부 결정
  if(id.equals("hong")){
	if(pwd.equals("1234")){
		out.println("<script>");
		out.println("alert('로그인 성공')"); 
		out.println("</script>");
		%>
		<!-- html 영역 -->
		<h2> 로그인 성공 페이지</h2>
		<%
		
	}else{ //pwd 불일치
		out.println("<script>");
		out.println("alert('로그인 실패(비번 불일치)')");
		out.println("location.href='dataSend.html'");
		out.println("</script>");
	}
  }else{ //id 불일치
	out.println("<script>");
	out.println("alert('로그인 실패(아이디 불일치)')");
	out.println("location.href='dataSend.html'");
	out.println("</script>");
  }

%>