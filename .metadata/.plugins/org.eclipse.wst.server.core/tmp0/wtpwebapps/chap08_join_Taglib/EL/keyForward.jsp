<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- keyForward.jsp -->
<%
	String name ="홍길동";
	int age=35;
	request.setAttribute("name", name);
	//request.setAttribute("age", age);
	
%>
	<jsp:forward page="EL02.jsp"/>