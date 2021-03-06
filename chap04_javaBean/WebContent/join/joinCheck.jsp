<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
  <jsp:useBean id="join" class="join.JoinBean"/>
  <jsp:setProperty property="*" name="join"/>
  <%
  	
  	String userId = request.getParameter("userId");
  	session.setAttribute("userId",userId);
  	
   	if(join.check()){
   		%>
   		<table align="center" border="1">
   			<tr>
   				<th colspan="2"><h2>로그인 결과 화면</h2></th>
   			</tr>
   			<tr>
   				<th colspan="2"><h3><%=session.getAttribute("userId") %>님이 로그인 하셨습니다.<a href="joinOut.jsp"><input type="button" value="로그아웃" /></a></h3></th>
   			</tr>
   			<tr>
   				<td>아이디</td>
   				<td><jsp:getProperty property="userId" name="join"/></td>
   			</tr>
   			<tr>
   				<td>비밀번호</td>
   				<td><jsp:getProperty property="userPwd" name="join"/></td>
   			</tr>   		
   			<tr>
   				<td>이름</td>
   				<td><jsp:getProperty property="userName" name="join"/></td>
   			</tr>
   		    <tr>
   				<td>성별</td>
   				<td><jsp:getProperty property="gender" name="join"/></td>
   			</tr>
   			<tr>
   				<td>이메일</td>
   				<td><jsp:getProperty property="email" name="join"/></td>
   			</tr>   		   		   		
   		</table>
   		
   		<%
   	}else{
   		out.println("<h2> 로그인 실패 </h2>");
		%>
		<script>
		alert('입력한 id : <%=join.getUserId()%> 입력한 pwd : <%=join.getUserPwd()%>');
		location.href='joinInfo.jsp';
		</script>
		<% 
   	}
  
  %>