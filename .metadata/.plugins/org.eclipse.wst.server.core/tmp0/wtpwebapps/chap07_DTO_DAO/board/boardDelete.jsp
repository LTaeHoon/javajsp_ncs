<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	int board_no = Integer.parseInt(request.getParameter("no"));
%>
<body>
	<form action="<%=request.getContextPath() %>/delete.do" method="post">
		<input type="hidden" name="board_no" value="<%=board_no%>"/>
		<table border="1" align="center">
			<tr>
				<th>비번<th>
				<td>
					<input type="password" name="pwd"/>
				</td>
			</tr>	
			<tr>
				<th colspan="2">
					<input type="submit" value="삭제"/>
				</th>
			</tr>
		</table>
	
	</form>
</body>
</html>