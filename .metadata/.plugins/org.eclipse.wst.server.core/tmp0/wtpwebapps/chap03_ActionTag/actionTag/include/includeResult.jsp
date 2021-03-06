<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
	<!-- includeTest.jsp(2) -> includeResult.jsp <-> includePage.jsp -->
	
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String pageName = request.getParameter("pageName");
		
	%>

	<h2> 포함하는 페이지 : includeResult.jsp </h2>
	<h2> 포함되는 페이지 : includePage.jsp </h2>
	
	<hr>
		<jsp:include page="<%=pageName %>" flush="true"/>
		<!-- flush = "true" : 버퍼 내용 출력 -->
	<hr>
	
	<!-- 리턴해서 실행되는 영역 -->
	<h2> 리턴후 실행되는 영역 </h2>
	
<!--  지시어 include vs 액션태그 include -->
	공통점 : 외부파일을 현재 위치에 포함시킨다.
	
	차이점 : 
		1) 지시어 include : 소스 복사 -> 붙여넣기 : 하나의 소스를 여러개 영역으로 나눈다.
		2) 액션태그 include : 실행결과를 현재 위치에 포함시킨다.