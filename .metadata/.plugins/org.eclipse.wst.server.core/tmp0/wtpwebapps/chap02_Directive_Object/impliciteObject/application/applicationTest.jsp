<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- applicationTest.jsp -->

<!-- application 내장객체
   - jsp 응용프로그램 정보 제공
  -->
  
  <%
     int ver = application.getMajorVersion(); // 버전 정보
     String server = application.getServerInfo(); // 서버 정보
     String path = application.getRealPath("/"); // 경로명 확인
     application.setAttribute("app", "application 내장객체");
  %>
  
  jsp 버전 : <%=ver %> <br>
  server 정보 : <%=server %> <br>
  / 경로 : <%=path %> <br>
  key 값 리턴 :  <%=application.getAttribute("app") %>
  
  
  
  
  
  
  
  
