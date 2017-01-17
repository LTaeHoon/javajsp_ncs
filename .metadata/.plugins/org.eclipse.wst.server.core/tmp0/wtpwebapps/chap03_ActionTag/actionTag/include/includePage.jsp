<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  includePage.jsp  -->

<h2> 여기는 includePage.jsp 페이지 </h2>

<%
	// include된 페이지에서도 처음 페이지에 파라미터 사용 가능
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");

%>

<h3><%=name %>님 환영합니다.</h3>