<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--  response 내장객체
	- 요청 정보를 처리한 후 결과를 응답하는 객체
	- 주요 메서드
 -->
 
 <h2> Response 내장객체 </h2>
 <hr>
 <%
 	// 전송페이지에 인코딩 방식 지정
 	response.setContentType("text/html;charset=UTF-8");
 	
 	// 형식) response.sendRedirect("경로명/파일명?변수명="+값)
 	String pageName = "responseTest.jsp";
 	
	response.sendRedirect("responsePro.jsp?pageName="+pageName);
 
 %>
 
 <!-- 
 	response의 주요 메서드
 	1. setContentType("문서타입;인코딩방식")
 	2. sendRedirect("경로명/파일명?변수명="+값+"&변수명="+값)
 	
 	forward() vs sendRedirect()
 	- 공통점 : 특정 페이지로 이동
 	- 차이점 : 
 		1) forward()
 			- 최종 페이지는 url에 노출 안됨
 			- key(object)를 넘기는 역할
 		2) sendRedirect()
 			- 최종 페이지가 url에 노출
 			- 변수를 넘기는 역할	
  -->    