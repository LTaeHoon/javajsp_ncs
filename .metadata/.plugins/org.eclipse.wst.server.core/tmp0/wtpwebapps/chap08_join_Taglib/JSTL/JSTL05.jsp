<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- c:forTokens 태그
  - StringTokenizer 클래스와 유사한 역할
  - var 속성 : 토큰을 저장하는 변수
  - items 속성 : 문자열 객체
  - delims 속성 : 토큰 구분자 
  - varStatus 속성: 토큰 수를 저장하는 변수 선언
 -->
 <c:forTokens 
       var ="token" 
       items="서울,인천,부산,광주,전주;대전" 
       delims=",;" varStatus="cnt">       
       <c:out value="${cnt.count} => ${token}" /> <br>
 </c:forTokens>
 
 <!-- 이미지 출력 -->
 <!-- [c:url] 태그
    1. 파일의 경로및 파일명 지정
    value 속성 : 경로 및 파일명
    var 속성 : value값을 저장하는 변수 지정    
  -->
 <c:url var="img" value="../images/login.jpg"/>
 <c:out value="${img}" />
 <img src="${img}" width="300" />
 
 <!-- 특정 사이트로 이동하는 c 태그 -->
<%--  <c:redirect url="http://www.naver.com"/>    --%>
 
 
 
 
 
 
 