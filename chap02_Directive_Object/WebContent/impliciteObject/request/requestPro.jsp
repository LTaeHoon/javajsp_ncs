<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--  requestTest.jsp(4개) -> requestPro.jsp -->

<%
	// 이전페이지 인코딩 방식 설정
	request.setCharacterEncoding("UTF-8");
	int num = Integer.parseInt(request.getParameter("num"));
	String name = request.getParameter("name");
	int grade = Integer.parseInt(request.getParameter("grade"));
	String subject = request.getParameter("subject");
	request.setAttribute("professor", "홍길동"); // key, value
%>
	
	<h2> 수강신청 결과 </h2>
	<h3> 학번 : <%=num %></h3>
	<h3> 이름 : <%=name%></h3>
	<h3> 학년 : <%=grade%></h3>
	<h3> 과목 : <%=subject %></h3>
	<h3> 지도교수 : <%=request.getAttribute("professor") %></h3>
	
	<!-- 
		request 내장객체 주요 메서드
		1. setCharacterEncoding("인코딩")
		2. getParameter("변수") 
			-> getParameterValues("배열")
 		3. setAttribute("key",value) // value : java Object
		4. getAttribute("key") // key를 매개변수로 입력하여 value 값을 리턴 받음
	 -->