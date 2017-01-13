<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  loginForm.jsp -> sessionPro.jsp(key생성) -> sessionOut.jsp -->
<!--  session key가 생성되면 그 이후 페이지들(동일 브라우져 모든 페이지)에서 key를 사용할 수 있음(넘기는 작업 없이) -->

<%
	session.removeAttribute("ID"); //세션 키 제거(만료)
%>

<h3> 로그아웃 되었습니다.</h3>
<a href="loginForm1.jsp">로그인</a>