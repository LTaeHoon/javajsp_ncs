<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.removeAttribute("userId");
	
%>	
	<h3>로그아웃 되었습니다.</h3>
	<a href="joinInfo.jsp">로그인</a>