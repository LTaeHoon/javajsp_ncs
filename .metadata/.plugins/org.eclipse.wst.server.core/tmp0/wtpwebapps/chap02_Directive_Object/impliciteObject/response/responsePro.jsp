<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  responseTest.jsp(pageName) -> responsePro.jsp -->

<%
	String pageName = request.getParameter("pageName");
%>
<h2> 현재 페이지는 responsePro.jsp</h2>
<h3> 이전 페이지 : <%=pageName%></h3>