<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String result = request.getParameter("result");
	String image = request.getParameter("image");
%> 
<style>
	td{text-align:"center"};
	
</style> 
<%
	if(result.equals("Success")){
		%>
		<table align="center" border="1">
			<tr>
				<th colspan="2"><h3> 로그인 성공</h3> </th>
			</tr>
			<tr>
				<td>사용자id: <%=session.getAttribute("id") %></td>
				<td rowspan="2"><img src=<%=image%> width="200"></img></td>
			</tr>
			<tr>
				<td>사용자 이름 : <%=session.getAttribute("name") %></td>
			</tr>
		</table>
		
		<%	
	}else{
		%>
			<h3>로그인 실패</h3>	
		<% 
	}
%>	