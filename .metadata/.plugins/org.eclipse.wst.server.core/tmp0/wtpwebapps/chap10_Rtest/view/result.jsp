<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!-- view/result.jsp -->
<body>
	<h2 align="center"> R 스크립트 실행 결과</h2>
	<table align ="center">
		<tr>
			<th> R 수식 </th>
			<td> ${param.num}</td> <!-- EL 이용 파라미터 받기 -->
		</tr>
		<tr>
			<th>R 차트</th>
			<td><img src="<%=request.getContextPath() %>/view/rnorm.jpg"
			width="720" height="450"/>
			</td>
		</tr>
		
	</table>
</body>
</html>