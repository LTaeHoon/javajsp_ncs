<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <!--  loginForm.jsp -> agreement.jsp(session key 생성) -> join.jsp 
  	-> result.jsp(변수 image, result)
  	1. 파라미터 받기
  	2. session key 이용 : id, name 출력
  	3. 동의 여부 -> 동의 : "회원가입 성공"
  				->비동의 : "회원가입 실패"
  -->
<%
	
	String agree = request.getParameter("agree");
	String image = request.getParameter("image");
	
%>
  
<h2> 회원정보 </h2>
<br>
<h3> 회원 id :<%=session.getAttribute("id") %></h3>
<h3> 회원 이름 :<%=session.getAttribute("name") %></h3>
<h3> 회원 가입 여부
<% 
String result ="";
if(agree.equals("yes")){
		result = "Success";
		%> 
		<font color="blue">회원가입 성공</font>
		<br>
		<% 
	}else{
		%>
		result = "Fail";4
	<!-- 	<font color="red">약관에 미동의 하셨습니다.</font> -->
		<% 
	  }	
	  response.sendRedirect("result.jsp?image="+image+"&result="+result);
	%>
</h3>