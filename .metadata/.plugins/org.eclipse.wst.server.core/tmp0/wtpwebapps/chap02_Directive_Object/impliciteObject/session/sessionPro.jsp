<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- loginForm.jsp(id/pwd) -> sessionPro.jsp -->
    
<!-- 
	session 내장객체
	- 서버에서 사용자를 구분할 수 있는 key를 생성하는 역할
	1. 로그인 시스템에서 사용자 인증
	2. 쇼핑몰에서 장바구니 기능 구현
	3. 세션 key 사용 범위 : 동일한 브라우저에서 생성된 모든 페이지
 -->
 
 <%
 	// 1. user 정보 받기
 	String id = request.getParameter("id");
 	String pwd = request.getParameter("pwd");
 	
 	// 2. user 정보 이용 -> session key 생성
 	session.setAttribute("ID", id);
 %>
 
 <h2> 로그인 사용자 정보 </h2>
 <h3> 사용자 세션 key : <%=session.getAttribute("ID") %></h3>
 <h3> 세션 ID : <%=session.getId() %></h3>
 <h3> 세션 유지시간 : <%=session.getMaxInactiveInterval() %></h3>
 
 <a href="sessionOut.jsp">로그아웃</a>
 
 
 <!-- 
 	내장객체에서 공통으로 사용되는 method
 	- 내장객체 : request, session, application
 	- 공통 method 
 	1) setAttribute("key",value);  // key 생성
 	2) getAttribute("key");  // key 획득
 	3) removeAttribute("key");  // key 제거
 	
 	- 내장객체별 key 사용범위
 	1) request : 포워딩된 페이지에서 사용
 		-> 페이지 단위
 	2) session : 동일한 브라우저에서 생성된 모든 페이지 사용
 		-> user 구분 용도 : 브라우저 단위
 	3) application : 응용 프로그램에서 생성된 모든 페이지 사용
 		-> 채팅 창 구현 용도 : 서로 다른 브라우저 (서로 다른 어플리케이션)
  -->
 