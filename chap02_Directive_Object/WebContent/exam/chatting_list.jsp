<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	session.setAttribute("name", name);
	
	Date date = new Date(); 
	SimpleDateFormat f = new SimpleDateFormat("E yyyy MMM dd HH:mm:ss", Locale.KOREA);

%>

<div align="center">
	<h2> My Simple Chatting!! </h2>
	<hr>
	<form method="post" action="chatting.jsp">
	@<%=name%><input type="text" name = "msg"/>
	<input type="submit" value="chatting"/>
	</form>
	<hr>
	<%
	if(application.getAttribute("msg")!=null){
		%>
		<%=application.getAttribute("name") %> :: <%=application.getAttribute("msg") %> , <%=f.format(date) %>
		<% 
		
	}
	
	%>
</div>
