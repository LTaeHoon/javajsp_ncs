<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- UpdateForm.jsp -->    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수정 폼</title>
</head>
<body>
   <div align="center">
      <h2> member1 수정 화면</h2>
      <form action="UpdatePro.jsp" method="post">
        아이디 : <input name = "id"  size="12"/>
        비밀번호 : <input type="password" name="passwd" size="12"/>
        수정 이름 : <input name="name"/>
      <input type="submit" value="update">
      </form>
      <a href="SelectTest.jsp">[테이블 목록 보기]</a>
   </div>
</body>
</html>


