<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--forwardTest.jsp(2) ->  forwardResult.jsp(2) -> forwardPage.jsp(2) -->
<hr>
<h2> 여기는 forwardPage.jsp 페이지</h2>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String hobby = request.getParameter("hobby");
	String paramName1 = request.getParameter("paramName1");
%>

<h2><%=id%> 님 환영합니다.</h2>
<h2>당신의 취미는 <%=hobby %> 이군요</h2>
<h2>당신의 또다른 취미는 <%=paramName1 %> 이군요</h2>
<hr>