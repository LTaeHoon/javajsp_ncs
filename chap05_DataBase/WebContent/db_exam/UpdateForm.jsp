<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- UpdateForm.jsp -->    
<%
	String get_id = request.getParameter("id");
	String get_name = request.getParameter("name");
	String get_date = request.getParameter("date");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수정 폼</title>
</head>'
<style>
	td{text-align:center};
</style>
<body>
   <div align="center">
   	<table border="1">
   	<form method="post" action="UpdatePro.jsp">
   		<tr>
   			<th colspan="2"><h3>레코드 수정 폼</h3></th>
   		</tr>
   		<tr>
   			<th>아이디</th>
   			<td><input name="id" size="12" readonly="readonly" value="<%=get_id%>"/></td>
   		</tr>
   	    <tr>
   			<th>이름(수정)</th>
   			<td><input name="name" size="12" value="<%=get_name%>"/></td>
   		</tr>
   	
   	    <tr>
   			<th>등록날짜</th>
   			<td><input name="date" size="12" readonly="readonly" value="<%=get_date%>"/></td>
   		</tr>
   	    <tr>
   			<th>비밀번호</th>
   			<td><input name="passwd" type="password" size="12"/></td>
   		</tr>
   		<tr>
   			<td colspan="2">
   			<input type="submit" value="수정"/>&nbsp;
   			<input type="reset" value="취소"/>
   			</td>
   		</tr>
   		</form>
   	</table>
     
   </div>
</body>
</html>


