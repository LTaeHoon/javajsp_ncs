<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 변수 선언과 초기화 방법 -->

<!-- 변수 선언
   형식) [c:set var="변수명" value="값"]
 -->

<c:set var="name" value="홍길동"/>
<c:set var="address">
   ${"서울시 강남구"}
</c:set> 

<!-- 변수 값 출력
     형식) [c:out value="값 or 변수"]
-->

이름 : <c:out value="${name }"/> <br>
주소 : <c:out value="${address }"/> <br>








