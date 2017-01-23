<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%
	boolean result = (boolean)request.getAttribute("result");
	if(result){
		  	
    	  out.println("레코드 갱신 성공!!");
    	  %>
    	  <script>
    	  	location.href="<%=request.getContextPath()%>/index.jsp";
    	  </script> 
    	  <%
      }else{
    	  out.println("레코드 갱신 실패!!");
    	  %>
    	  <script>
    	  	location.href="<%=request.getContextPath()%>/db_view/UpdateForm.jsp";
    	  </script> 
    	  <% 
      }
      // open 객체 닫기   
      
%>

