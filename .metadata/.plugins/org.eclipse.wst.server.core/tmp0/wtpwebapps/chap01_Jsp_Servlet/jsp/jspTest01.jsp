<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{background-color:#666;color:orange;}
</style>
<script type="text/javascript">
	//1초 단위로 현재 페이지를 새로고침
	setInterval(function name(){
		location.reload(); //화면 새로고침
	}, 1000); //1초 단위 새로고침
</script>

  <% //jsp 영역
  	Calendar c = Calendar.getInstance();
    int hour = c.get(Calendar.HOUR_OF_DAY); //시간
    int minute = c.get(Calendar.MINUTE); //분
    int second = c.get(Calendar.SECOND); //초
    
    
  %> <!-- JSP 영역 끝 -->
</head>
<body>
  <!--  html 영역 -->
  <h2>현재 시간 <%= hour %>시 <%=minute %>분 <%=second %>초</h2>
  <h2>다음 시간 <%=hour+1 %>시</h2>
  <!--  표현식 : java 변수, 수식, 상수 -->
  <%
	//jsp 영역
  %>
</body>
</html>

<!-- jsp(java sever page) 특징
	1. java 기반 웹프로그래밍 언어
	2. HTML 태그가 java 코드 포함
	3. MVC 모델의 영역별 언어
	   jsp : View 영역 페이지
	   Servlet : Controller 영역 페이지
	   java : Model 영역 페이지(DTO,DAO)
	4. jsp문서 -> servlet(class) -> 컴파일 -> 실행 -> 브라우저
	5. jsp 코드는 전송 안되고, 실행 결과만 브라우저에 전송 (웹브라우져에서 소스보기 시, html 코드만 보임)
 -->