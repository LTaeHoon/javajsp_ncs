
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
	boolean result = (boolean)request.getAttribute("result");
	if(result){
		  	
    	  out.println("레코드 삭제 성공!!");
    	  %>
    	  <script>
    	  	location.href="<%=request.getContextPath()%>/index.jsp";
    	  </script> 
    	  <%
      }else{
    	  out.println("레코드 삭제 실패!!");
    	  %>
    	  <script>
    	  	alert("id와 password를 정확히 입력하세요");
    	  	location.href="<%=request.getContextPath()%>/db_view/DeleteForm.jsp";
    	  </script> 
    	  <% 
      }
      // open 객체 닫기   
      
%>

    