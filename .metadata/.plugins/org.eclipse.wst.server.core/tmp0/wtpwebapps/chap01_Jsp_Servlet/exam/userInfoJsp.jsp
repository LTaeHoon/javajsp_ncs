<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String address = request.getParameter("address");
		String twenty = null;
		if(age>=20){
			twenty = "성년";
		}else{
			twenty = "미성년";
		}
	%>
	<h2>유저 정보 표출</h2>
	이름: <%=name %> <br>
	나이: <%=age %>  <%=twenty%> <br>
	주서: <%=address %> <br>
	
</body>
</html>