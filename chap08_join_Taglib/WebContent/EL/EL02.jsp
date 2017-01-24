<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- EL02.jsp -->

<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
%>

<h3> 표현식으로 출력 </h3>
이름 : <%=name%> <br>
주소 : <%=address%> <br>

<h3> EL로 출력 </h3>
이름 : ${param.name} <br>
주소 : ${param.address} <br>

<h3> 키 출력 </h3>
이름 : ${empty name} <br> <!-- null : true, null 아니면 false -->
나이 : ${empty age} <br>