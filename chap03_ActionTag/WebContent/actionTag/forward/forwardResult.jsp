<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- forwardTest.jsp(2) -> forwardResult.jsp -->

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String hobby = request.getParameter("hobby");
%>

<h2> 아이디 : <%=id %></h2>
<h2> 취미 : <%=hobby %></h2>

<!-- forward 액션 태그 적용 -->
<jsp:forward page="forwardPage.jsp">
	<jsp:param name="paramName1" value="축구하기" />
</jsp:forward>

<!--  리턴후 실행 페이지(안보임) -->
<h2> 리턴 후 실행 결과</h2>