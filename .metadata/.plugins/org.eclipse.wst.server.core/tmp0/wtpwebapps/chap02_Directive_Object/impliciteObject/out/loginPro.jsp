<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- loginForm.jsp(id, pwd) -> loginPro.jsp -->

<%!
   // 전역변수 - db 대신
   String db_id = "hong";
   String db_pwd = "1234";
%>

<%
   String id = request.getParameter("id");
   String pwd = request.getParameter("pwd");
   
   if(id.equals(db_id) && pwd.equals(db_pwd)){
	   out.println("<script>");
	   out.println("alert('로그인 성공')");
	   out.println("</script>");
	   %>
	      <!-- html 영역 -->
	      <h3>
	        <script>
	           alert('id : <%= id %>');  
	        </script>
	             사용자 id : <%= id %> <br>
	             사용자 pwd : <%= pwd %>
	      </h3>
	   <%
   }else{
	   out.println("<script>");
	   out.println("alert('로그인 실패')");
	   // 특정 페이지 이동
	   out.println("location.href='loginForm.jsp'"); // 새로고침 + 직전 페이지 이동
	   //out.println("history.back()"); // 직전 페이지 이동(새로고침x)
	   // out.println("history.go(-1)"); // 직전 페이지 이동
	   out.println("</script>");
   }
%>
   <!-- 
      이전 페이지 또는 특정 페이지 이동 javascript 객체
      [window.document.]location.href=""
      [window.]history.back()   
    -->



