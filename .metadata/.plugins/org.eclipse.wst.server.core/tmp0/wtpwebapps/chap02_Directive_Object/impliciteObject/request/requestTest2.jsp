<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- request 기타 메서드 : client(유저) 정보 획득 관련 메서드  -->

  <%
    String protocol = request.getProtocol();
    String server = request.getServerName();
    String uri = request.getRequestURI();
    String url = new String(request.getRequestURL());
    String brow = request.getHeader("user-agent");
    String projectName = request.getContextPath(); 
  %>
  
  프로토콜 : <%=protocol %> <br>
  서버이름 : <%=server %> <br>
  uri : <%=uri %> <br>
  url : <%=url %> <br>
  브라우저 : <%=brow %> <br>
  프로젝트명 : <%= projectName %>
  <br>
  <!-- 프로젝트명/ 링크 걸기 -->
  <a href="<%=request.getContextPath() %>/impliciteObject/request/requestTest.jsp">수강신청</a>
  
  
  
  
  
  
  
  
  
  
  