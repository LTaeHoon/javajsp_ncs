<%@page import="java.util.*, java.text.*"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 요청 객체 인코딩
	request.setCharacterEncoding("utf-8");

	// chatting_list.jsp에서 입력한 채팅 메세지 내용
	String msg = request.getParameter("msg");
	// chatting_login.jsp에서 입력한 id
	String id = (String)session.getAttribute("id");
	
	// 현재시간 구하기
	Date date = new Date();
	SimpleDateFormat f =
		new SimpleDateFormat("E yyyy MMM dd HH:mm:ss", Locale.KOREA);
	
	// ArrayList 객체 생성
	ArrayList<String> list = 
		(ArrayList<String>)application.getAttribute("msg");
		
	// 저장된 내용이 없을 시
	if (list == null) 
		list = new ArrayList<String>();
	
	// ArrayList 객체에 저장할 내용
	String comment = id + ":: " + msg +
						", " + f.format(date);
	// 저장
	list.add(comment);
	// 속성값을 리스트로 저장 (1개의 객체에 여러개의 속성이 저장이 가능하기 때문)
	application.setAttribute("msg", list);	
%>

<script>
  // 이전페이지(chatting_list.jsp)로 돌아가기
  history.go(-1);
</script>
