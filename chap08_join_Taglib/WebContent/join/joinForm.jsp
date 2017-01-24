<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>조인문 폼</title>
</head>
<body>
   <form method="post"
     action="<%=request.getContextPath()%>/find.do">
    <table border="1" align="center">
       <tr>
          <th colspan="2"> <h3> 조인문 검색</h3> </th>
       </tr>
       <tr>
          <th> 학생명 입력 </th>
          <td>
             <input name="name" size="14"/>
          </td>
       </tr>
       <tr>
          <td colspan="2" align="center">
            <input type="submit" value="검색"/>
          </td> 
       </tr>
    </table>
   </form>
</body>
</html>