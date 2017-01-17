<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>스트립트릿(scriptlet)</title>
</head>
<body>
	<% //jsp(java) 문법 작성
	String arr[] ={"java","jsp","servlet","spring"};
	out.println("arr 길이 :" + arr.length);
	int index = (int)(Math.random()*4); //0~3
	out.println("index:"+index);
	%> <!--  html 영역 -->
	<h2>
		<!--  표현식 : java 변수, method, 수식 -->
		선택된 과목 : <%=arr[index]%>
	</h2>
</body>
</html>