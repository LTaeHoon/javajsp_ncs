<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>  
<!-- c:choose 태그
   1. switch문 유사 -> 다중선택문
   2. when 태그 : case문 유사
-->
<c:set var="fruit" value="apple"/>
<c:if test="${!empty fruit}">
   fruit 변수 : <c:out value="${fruit}"/>
</c:if>
<hr>

<!-- c:choose 태그 적용 -->
<c:choose>
  <c:when test="${fruit=='apple'}">
     사과 : <c:out value="${fruit}"/>
  </c:when>
  <c:when test="${fruit=='orange'}">
    오랜지 : <c:out value="${fruit}"/>
  </c:when>
  <c:otherwise>
    해당하는 과일이 없습니다.
  </c:otherwise>
</c:choose>









 