<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
	td{text-align:center}
</style>
<body>
<div align ="center">
	<h2> 회원정보 입력</h3>
	<form action="joinCheck.jsp" method="post">
		<table>
			<tr>
				<td>아이디: </td>
				<td><input name="userId"/></td>
			</tr>
			<tr>
				<td>비밀번호: </td>
				<td><input type="password" name="userPwd"/></td>
			</tr>
			<tr>
				<td>이름: </td>
				<td><input name="userName"/></td>
			</tr>
			<tr>
				<td>성별 :</td>
				<td><input type="radio" name="gender" value="남">남
			  		<input type="radio" name="gender" value="여">여
			    </td>
			</tr>
			<tr>
				<td>이메일 :</td>
				<td><input name="email"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="가입"/>
					<input type="reset" value="취소"/>
				</td>
			</tr>
			
		</table>
	</form>
	</div>
</body>
</html>