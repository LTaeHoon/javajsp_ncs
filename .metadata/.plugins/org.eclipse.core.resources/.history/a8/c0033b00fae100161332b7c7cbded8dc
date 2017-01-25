<%@page import="join.JoinDTO"%>
<%@page import="java.util.List"%>
<%@page import="join.JoinDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table border="1" align="center">
   <tr>
      <th>학과코드</th><th>학번</th>
      <th>이름</th><th>성별</th>
      <th>학과명</th>
   </tr>    
<%
   List<JoinDTO> list =
   	 (List<JoinDTO>)request.getAttribute("list");

    if(list.size() > 0){
    	for(int i=0; i<list.size(); i++){
    		JoinDTO dto = list.get(i);
    		%>
    		<tr>
      			<th><%=dto.getDept_code() %></th>
      			<th><%=dto.getNum() %></th>
      			<th><%=dto.getName() %></th>
      			<th><%=dto.getGender() %></th>
      			<th><%=dto.getDept_name() %></th>
   			</tr>    		   
    		<%
    	}
    }else{
    	%>
    	   <tr>
    	      <th colspan="5"> 
    	         <h3> 검색된 레코드가 없습니다.</h3>
    	      </th>
    	   </tr>    	
    	<%
    }
%>
</table>
