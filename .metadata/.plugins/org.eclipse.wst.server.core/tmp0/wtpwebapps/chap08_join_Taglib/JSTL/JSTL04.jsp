<%@page import="java.util.Hashtable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>  

<!-- c:forEach 태그
   1. 반복문을 지정하는 태근
   2. 형식) c:forEach   var="변수" begin="초기값"
                       end="종료값" step="증감값"  
                       items="참조변수"                      
 -->    
 
 <h3> 구구단 : 9</h3>
 <ul> 
  <c:forEach var="i" begin="1" end="9">
    <li> 9 * ${i} = ${9 * i} </li> 
  </c:forEach>
 </ul>
 
 <h3> 1~100사이의 홀수 값 출력 </h3> 
  <c:set var="sum" value="${0}"/> 
  
  <c:forEach var="i" begin="1" end="100" step="2">
    <c:set var="sum" value="${sum + i}" />
       ${i} =>  ${sum}<br> 
  </c:forEach>
  <h2> 홀수의 합 = ${sum}</h2>
 
 <%
    Hashtable<String,String> htable
        = new Hashtable<String,String>();
    htable.put("오랜지", "orange");
    htable.put("사과", "apple");
    htable.put("바나나", "banana");
 %>
 
 <!-- 객체를 값으로 지정 -->
 <c:set var="ht" value="<%=htable %>"/>
 <!-- 원소의 수 만큼 반복 -->
 <c:forEach var="i" items="${ht}">
    ${i.key} => ${i.value} <br>
 </c:forEach>
 
 
 
 
 
 
 