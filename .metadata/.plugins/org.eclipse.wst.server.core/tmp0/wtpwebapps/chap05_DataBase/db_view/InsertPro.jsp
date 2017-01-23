
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- InsertForm.jsp(3개:id,passwd,name) -> InsertPro.jsp:DB 저장-->

<%
	boolean result = (boolean)request.getAttribute("result");
	if(result){
		  	
    	  out.println("레코드 삽입 성공!!");
    	  %>
    	  <script>
    	  	location.href="<%=request.getContextPath()%>/index.jsp";
    	  </script> 
    	  <%
      }else{
    	  out.println("레코드 삽입 실패!!");
    	  %>
    	  <script>
    	  	location.href="<%=request.getContextPath()%>/db_view/InsertForm.jsp";
    	  </script> 
    	  <% 
      }
      // open 객체 닫기   
      
%>

