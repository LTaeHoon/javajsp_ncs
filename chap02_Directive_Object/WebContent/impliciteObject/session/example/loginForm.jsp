<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login 화면 </title>
</head>

<body>
  <h2> 사용자 로그인 화면</h2>
  <p align="left">
     <img src="../images/login.jpg" width="350"/>
  </p>
   <!--  action="http://192.168.0.26:8080/chap01_JspServlet/LoginServlet" -->
  <form name="frm" method="post"        
        action="agreement.jsp">
         
    <table border="1">
      <tr>
          <th> 아이디 </th>
          <td> <input type="text" name="id"/>
      </tr>
      <tr>
          <th> 비밀번호 </th>
          <td> <input type="password" name="pwd"/>
      </tr>
      <tr>
          <th> 이름 </th>
          <td> <input type="text" name="name"/>
      </tr>
      <tr>
          <td colspan="2" align="center">
             <input type="submit" value="전송"/>
             <input type="reset" value="취소"/>
          </td>       
      </tr>
    </table>
  </form>
</body>
</html>