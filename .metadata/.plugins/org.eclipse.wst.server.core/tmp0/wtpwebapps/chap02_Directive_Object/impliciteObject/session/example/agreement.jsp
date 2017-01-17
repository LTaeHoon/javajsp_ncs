<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   // 1. 파라미터 받기(id,pwd,name)
   request.setCharacterEncoding("UTF-8");
   String id = request.getParameter("id");
   String pwd = request.getParameter("pwd");
   String name = request.getParameter("name");
   
   // 2. 사용자 id로 세션 만들기
   session.setAttribute("id", id);
   session.setAttribute("name", name);

%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>약관</title>
</head>
<body>
  <h3> 약관 </h3>
  <hr>
  <font size="2">
    1. 웹 사이트 운영에 관한 약관에 동의 하십니까?<br>
    2. 웹 사이트 운영에 방해하는 회원은 탈퇴시킵니다.<br>
  </font>
  <hr>
  
  <form method="post" action="join.jsp" >
     위 약관에 동의하시겠습니까?
     <input type="hidden" name="image" value="../images/Koala.jpg"/>
     <input type="radio" name="agree" value="yes"> 동의함
     <input type="radio" name="agree" value="no"> 동의안함
     <br><br>
     <input type="submit" value="확인"/>  
  </form> 
</body>
</html>





