<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String result = request.getParameter("result");
	String image = request.getParameter("image");
	
	//session 속성 가져오기 : object -> string(다운 캐스팅)
	String id = (String)session.getAttribute("id");
	String name = (String)session.getAttribute("name");
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
				<td>사용자id: <%=id %></td>
				<td rowspan="2"><img src="<%=image%>" width="200"></img></td>
			</tr>
			<tr>
				<td>사용자 이름 : <%=name%></td>
			</tr>
		</table>
		
		<%	
	}else{
		%>
			<h3>로그인 실패</h3>	
         <% 
	}
%>	

<a href="logOut.jsp">로그아웃</a>
