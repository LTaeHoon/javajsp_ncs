<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>스크립트릿에서 if문 사용</title>
</head>
<body>
	<h2>스크립트릿에서 if문 사용</h2>
	<% //java,jsp 문법
		int boardNo=8;
		if(boardNo <5){
			//참인 경우
			out.println("게시물이 많네~!!");
		%>
		  <!-- html 영역 -->
		  <h2> 게시물이 많네~~~</h2>
		<% 
		}else{ // if end
			//거짓인 경우
			out.println("게시물이 적네~!!");
		%>
		  <!-- html 영역 -->
		  <h2> 게시물이 적네~~~</h2>
		<% 
		}
	%>
</body>
</html>