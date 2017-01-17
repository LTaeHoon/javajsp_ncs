<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--  out 내장객체 
   - jsp 페이지에서 웹 브라우저에 결과를 출력하는 내장 객체
   - cf) servlet에서 out 객체 가져오기
         PrintWriter out = response.getWriter();
         out.println("문자열"); // 브라우저에 출력
-->

 <h2> out 내장객체 </h2>
 <%
     String name="홍길동";
     out.println("내 이름은 <font color='blue'>"+ name +"</font>"); 
 %>
 <br>
 이름(표현식 이용) : <%= name %>
 
 
 
 
 
 
 