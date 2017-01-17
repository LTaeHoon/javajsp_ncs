<%@page import="java.util.*"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 요청 객체 인코딩 지정
	request.setCharacterEncoding("utf-8");
	
	// 입력한 아이디 받기
	String id = request.getParameter("id");
	
	// id값을 입력하지 않았을 시 지정해줄 id값
	if (id=="" || id ==null)
		id = "unknown";
	
	// id값을 session으로 각 브라우저마다 지정
	session.setAttribute("id", id);
	
	// ArrayList 객체로 저장된 application 속성값 가져오기
	ArrayList<String> list = 
		(ArrayList<String>)application.getAttribute("msg");
	
			
%>

<script src = "jquery1.js"></script>
<script src = "jquery2.js"></script>
<script>
	$(function() {
		
		var text = $('input:eq(0)');
		
		text.focus();
		
		// session 속성으로 저장된 id값을 span객체에 넣기
		$('span').html('@<%=session.getAttribute("id")%>');
		
		// remove(채팅 삭제)버튼 클릭 이벤트
		$('input[type="button"]').on('click', function(){
			// application 속성값 삭제하는 jsp 페이지로 이동 
			location.href="chatting_reset.jsp";
		});
	})
</script>
<link href="style.css" rel="stylesheet" type="text/css">

<h2>My Simple Chatting!!</h2>

<form action="chatting.jsp" method="post">

	<span></span> <!-- id값이 들어올 자리 -->
	<input name="msg" size=10/>
	<input type="submit" value="chatting"/>
	<input type="button" value="remove"/>
</form>

<div align="center">
<%
	// application 속성값이 있을 시 실행문 
	if(list != null) {
		out.println("<ul>");
		for(String m : list)
			out.println("<li>" + m + "</li>");
		
		out.println("</ul>");
	}
%>
</div>
