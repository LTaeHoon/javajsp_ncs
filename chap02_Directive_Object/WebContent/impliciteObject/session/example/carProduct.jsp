<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	session.setAttribute("id", id);
	session.setAttribute("name", name);
%>
<h3>구매할 상품을 선택하세요.(장바구니)</h3>
	<form method="post" action="carResult.jsp">
		<input type="checkbox" name="car" value="../images/car1.gif"/>제네시스
		<input type="checkbox" name="car" value="../images/car2.gif"/>소나타
		<input type="checkbox" name="car" value="../images/car3.gif"/>그랜저
		<input type="checkbox" name="car" value="../images/car4.gif"/>i30
		<hr>
		<input type="submit" value="선택"/>
</form>
