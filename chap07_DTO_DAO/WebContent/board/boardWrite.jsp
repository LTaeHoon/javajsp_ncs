<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시물 작성 폼</title>
</head>
<style>
table{width:500;margin:auto}
</style>
<body>
	<form action="<%=request.getContextPath() %>/insert.do" method="post">
		<table border="1">
			<tr>
				<th colspan="2"><h2> 게시물 작성폼 </h2></th>
			</tr>
			<tr>
				<th> 작성자 </th>
				<td> <input name="board_name"/></td>
			</tr>
			<tr>
				<th> 글제목 </th>
				<td> <input name="board_title"/></td>
			</tr>
			<tr>
				<th> 글내용  </th>
				<td> <textarea name="board_cont" rows="5" cols="40"></textarea></td>
			</tr>
			<tr>
				<th> 비번 </th>
				<td> <input type="password" name="board_pwd"/></td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" value="작성"/>
					<input type="reset" value="취소"/>
				</th>
			</tr>
		</table>
	</form>
</body>
</html>