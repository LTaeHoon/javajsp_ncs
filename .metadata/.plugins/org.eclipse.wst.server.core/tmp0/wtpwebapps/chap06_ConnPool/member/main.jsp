<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- loginProcess.jsp("id") -> main.jsp -->

<%
   String id="";
   if(session.getAttribute("id") != null){
	   // session 키 변수 저장
	   id = (String)session.getAttribute("id");
   }else{
	   out.println("<script>");
	   out.println("alert('다시 로그인 하세요!')");
	   out.println("location.href='loginForm.jsp'");
	   out.println("</script>");
   }
%>
    <h3> <%= id %>님의 로그인을 환영합니다.</h3>
    
    <%
       if(id.equals("admin")){
    	   %>
    	     <a href="member_list.jsp">관리자모드(회원목록 보기)</a>
    	   <%
       }    
    %>
   
   <hr>
   <div align="center"> 
     <img src="../images/login.jpg" width="400"/>
   </div>
   <br>
   <a href="logout.jsp">[로그아웃]</a>
   
   
   
   
