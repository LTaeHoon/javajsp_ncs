<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num_x = Integer.parseInt(request.getParameter("num"));
	
	Thread.sleep(3000);
	
	response.sendRedirect("result.jsp?num="+num_x);
%>
