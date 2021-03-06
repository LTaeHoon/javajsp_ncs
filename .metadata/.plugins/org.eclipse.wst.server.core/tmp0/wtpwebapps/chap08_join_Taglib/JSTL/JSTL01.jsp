<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--  JSTL 특징  
	1. JSTL(Jsp Standard Tag Lib.)
	2. 스크립트릿 보다 코드 가독성 제공
	3. 라이브러리(2개) : 자카르타 사이트 다운로드
	4. if, for 로직 작성
	5. taglib 지시어를 이용
-->
<%
	request.setCharacterEncoding("UTF-8");
%>
<!-- bean 객체 생성 -> 초기화  -->
<jsp:useBean id="user" class="join.User"/>
<jsp:setProperty property="*" name="user"/>
<h2> 스크립트릿 양식 </h2>
<%
	if(user.getName()!=null){
		%>
			<h2>이름 : <%=user.getName() %></h2>
		<%
	}
	if(user.getAddress()!=null){
		%>
		<h2>주소 : <%=user.getAddress() %></h2>
		<%
	}
%>
<h2> JSTL 방식 </h2>
<!-- if문 형식) [c:if test="조건식"] 내용 [/c:if] -->
<c:if test="${!empty user.name}">
	<h2> 이름 : ${user.name} </h2>
</c:if>
<c:if test="${!empty user.address}">
	<h2> 주소 : ${user.address} </h2>
</c:if>

<!-- 예외처리 -->
<c:catch var="exception">
	예외발생<br>
	<%=10/0 %> <!-- 산술적 예외 발생 -->	
</c:catch>

예외정보 : ${exception } <!-- 예외정보는 표현언어 이용 -->
