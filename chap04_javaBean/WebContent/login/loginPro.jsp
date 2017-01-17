<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- loginPro.jsp 
	 LoginBean login = new LoginBean(); -->
<jsp:useBean id="login" class="login.LoginBean"/>
<!-- id : 참조변수, class : 객체 생성 하고자 하는 클래스 -->

<%-- <% //1차 작성
	String userId = request.getParameter("userId");
	String userPwd = request.getParameter("userPwd");
	login.setUserId(userId); //아이디 초기화
	login.setUserPwd(userPwd); //비번 초기화
	
	if(login.check()){ //true
		out.println("<h2> 로그인 성공 </h2>");
		%>
			<!-- id/pwd -->
			<h2>id : <%=login.getUserId()%></h2> 
			<h2>pwd : <%=login.getUserPwd() %></h2>
		<% 
	}else{
		out.println("<h2> 로그인 실패 </h2>");
		%>
		<script>
		
		alert('입력한 id : <%=login.getUserId()%> 입력한 pwd : <%=login.getUserPwd()%>');
		location.href='login.jsp';
		</script>
		<% 
		
	}
%> --%>

<!--  2차 작성 : useBean 액션태그와 함께 사용되는 액션태그 -->
<jsp:setProperty property="*" name="login"/>
<!-- setProperty 액션태그 : 동일한 이름을 찾아서 자동 바인딩(맵핑) -->
<% 
if(login.check()){ //true
		out.println("<h2> 로그인 성공 </h2>");
		%>
			<!-- id/pwd -->
			<h3>사용자 id : <jsp:getProperty property="userId" name="login"/></h3>
			<h3>사용자 pwd : <jsp:getProperty property="userPwd" name="login"/></h3>
		<% 
	}else{
		out.println("<h2> 로그인 실패 </h2>");
		%>
		<script>
		
		alert('입력한 id : <%=login.getUserId()%> 입력한 pwd : <%=login.getUserPwd()%>');
		location.href='login.jsp';
		</script>
		<% 
		
	}
%>