<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>서블릿 등록방법(2가지)</title>
</head>
<body>
	<h2>서블릿 등록방법(2가지)</h2>
	
	<!-- 1. web.xml에 등록방법 -->
	<form name="frm1" method="get" action="../adder1">
		첫 번째 수 : <input name="num1"/>
		두 번째 수 : <input name="num2"/>
		<hr>
		<input type="submit" value="더하기"/>
	</form>
	<!--  2. @에노테이션 등록방법 -->
	<form name="frm2" method="get" action="../adder2">
		첫 번째 수 : <input name="num1"/>
		두 번째 수 : <input name="num2"/>
		<hr>
		<input type="submit" value="더하기"/>
	</form>
</body>
</html>

<!-- 서블릿 등록
	1. 목적 : 처리 프로그램을 url에서 숨긴다.
		-> 보안 측면에서
	2. 방법 
		1) web.xml : 프로젝트 설정파일에 등록
			-> 일관성 제공
		2) anotation 방법 : Servlet 작성하면서 @으로 등록
			-> 편의성 제공 
 -->