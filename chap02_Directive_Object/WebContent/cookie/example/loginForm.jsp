<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	Cookie []cookie = request.getCookies();
	String id = "";
	String pwd ="";
	if(cookie !=null){
		for(int i=0;i<cookie.length;i++){
			if(cookie[i].getName().equals("id")){
				id = cookie[i].getValue();
			}
			if(cookie[i].getName().equals("pwd")){
				pwd = cookie[i].getValue();
			}
		}
	}

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 화면</title>
<style type="text/css">
  #btn{height: 50px}
</style>
</head>
<body>   
   <form action="<%=request.getContextPath()%>/LoginAction" method="post">   
     <table>
        <tr>
           <td> ID </td>
           <td> <input name = "id" value="<%=id%>"/> </td>
           <td rowspan="2"> 
              <input type="submit" value="login" id="btn" />
           </td>
        </tr>
        
        <tr>
           <td> PWD </td>
           <td> <input type="password" name="pwd" value="<%=pwd%>"/>
        </tr>
        <tr>
           <td colspan="3" align="center">
              <input type="checkbox" name="save"/>ID/PWD 저장
           </td>
        </tr>
     </table>   
   </form> 
</body>
</html>





