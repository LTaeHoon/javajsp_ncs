<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- logout.jsp : session 속성(id) 말료, loginFrom.jsp 이동 -->

<%
   session.invalidate(); // session 모든 속성 말료
   out.println("<script>");
   out.println("alert('로그아웃 되었습니다.')");
   out.println("location.href='loginForm.jsp'");
   out.println("</script>");
%>
