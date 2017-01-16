<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name=(String)session.getAttribute("name");
	String msg = request.getParameter("msg");
	application.setAttribute("msg", msg);
	application.setAttribute("name", name);
	
%>
<script>
	history.back();
</script>
