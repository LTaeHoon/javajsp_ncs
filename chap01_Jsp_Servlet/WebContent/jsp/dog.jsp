<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>좋아하는 강아지 선택</title>
</head>
<body>
	<h2> 좋아하는 강아지 선택 </h2>
	<form method="post" action="../choiceDog">
		<input type="checkbox" name="dog" value="./images/jin.jpg"/>진돗개
		<input type="checkbox" name="dog" value="./images/pu.jpg"/>푸들
		<input type="checkbox" name="dog" value="./images/sap.jpg"/>삽살개
		<input type="checkbox" name="dog" value="./images/pung.jpg"/>풍산개
		<hr>
		<input type="submit" value="선택"/>
	</form>
</body>
</html>