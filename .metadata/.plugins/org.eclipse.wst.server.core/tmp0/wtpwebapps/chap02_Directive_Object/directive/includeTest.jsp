<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  jsp 지시어?
	- 웹 컨테이너(Tomcat)에게 정보를 지시하는 역할
	형식) <%--<%@ 지시어 %> --%>
	종류)
		-page, include, taglib 등
		1. page 지시어 : 현재 페이지 정보(언어, 문서타입, 인코딩방식)를 웹컨테이너에 제공
		2. include 지시어 : 외부파일(*.html, *.jsp)을 현재 파일에 포함시키는 역할
			형식)<%-- <%@include file="파일경로/파일명" %> --%>
		3. taglib : EL, JSTL 커스텀 태크를 이용하여 view page 구현 시 사용
 -->

<%@include file="./include/header.jsp"%>

<hr>
	<h2>여기는 includeTest.jsp 파일 입니다.</h2>
<hr>

<%@include file="./include/footer.jsp"%>


