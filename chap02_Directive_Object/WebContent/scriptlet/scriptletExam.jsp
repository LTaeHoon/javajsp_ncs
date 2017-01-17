<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>scriptlet 유형</title>
</head>
<body>
	<%  // 1.jsp(java) 문법 작성 영역 - 지역변수
		String str = "1부터 100까지 합 구하기";
		String str1 = str2 +" 웹 프로그래밍 언어";
	%>
	<%! // 2.java method 작성 - 전역변수
		String str2 = "jsp/servlet"; //클래스 변수
		public int sum(){
			int tot=0;
			for(int i=0;i<=100;i++){
				tot+=i;
			}
			return tot;
		}
	
	%>
	<!-- 3.표현식 : 지역/전역 변수 출력, method 호출 -->
	<%= str%> :<font color="red"><%=sum()%></font> <br>
	<%= str1 %><br>
	<%= str2 %>
	
	<!-- 
		jsp 처리과정
		jsp 문서 -> servlet코드(*.java) ->컴파일(*.class) -> 실행 -> 웹브라우져 출력
	 -->
	
</body>
</html>