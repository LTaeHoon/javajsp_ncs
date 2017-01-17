<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		//서블릿에서 전송한 key 받음
		String result = (String)request.getAttribute("result");	
	%>
	
	<h2> 로그인 결과 : <%=result %></h2>
	