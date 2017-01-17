<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- include vs forward 액션태그 
		공통점 :
			- 페이지에 흐름을 제어하는 액션태그
			- 액션태그 페이지에 파라미터 전송
		차이점 :
			- include : 해당 페이지로 이동 실행 -> 리턴
			- forward : 해당 페이지로 이동 실행(종료)
	-->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forward 실행화면</title>
</head>
<body>
	<h2> forward 페이지 </h2>
	<form action="forwardResult.jsp" method="post">
		아이디 : <input name="id"/>
		취미 : <select name="hobby">
					<option value ="영화보기">영화보기</option>
					<option value ="만화보기">만화보기</option>
					<option value ="TV보기">TV보기</option> 
			  </select>
		<input type="submit" value="전송"/>
	</form>
</body>
</html>