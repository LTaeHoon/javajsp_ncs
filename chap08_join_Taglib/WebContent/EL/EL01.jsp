<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- EL01.jsp
	
	EL : 표현 언어 
	 - 별도의 라이브러리 필요 없음
	 - JSP 2.0에서 자체 지원
	 - 상수, 수식, 파라미터, 키 출력 용이
	 형식) \${상수 or 수식 or 파라미터 or 키}  
	
 -->
 <h3> EL 상수 출력 예 </h3>
 정수형 : ${140}<br>
 실수형 : ${145.42}<br>
 문자형 : ${"홍길동"}<br>
 논리형 : ${true}<br>
 
 <h3> EL 수식 출력 예</h3>
 \${10+20} -> ${10+20} <br>
 \${10-20} -> ${10-20} <br>
 \${10*20} -> ${10*20} <br>
 \${10/20} -> ${10/20} <br>
 
 <hr>
 <h3> key 출력 </h3>
 name : ${name}<br>
 age : ${age}<br>
 
 <h3> request 내장객체 이용 출력</h3>
 <%
 	String name = (String)request.getAttribute("name");
 	int age= (Integer)request.getAttribute("age");
 %>
 name : <%=name%><br>
 age : <%=age%><br>
 