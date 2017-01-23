<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- InsertForm.jsp -->    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터 입력 폼</title>
</head>
<body>
   <div align="center">
   <h2> 레코드 입력 화면</h2>
   <form action="../insert.do" method="post">
     아이디 : <input name = "id" size="12"/>
     비번 : <input type="password" name="passwd" size="12">
     이름 : <input name = "name" size = "12">
    <!-- 등록날짜 : sysdate 대체 --> 
    <input type="submit" value="save"/>
   </form>
   </div>
</body>
</html>


