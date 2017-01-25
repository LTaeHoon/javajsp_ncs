<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데카르트</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
 <script>
 function login_window(){ // 사용자 정의 함수
	  window.open("../login/login_form.jsp","로그인",
			     "width=380px, height=250px");
     // open("파일명", "창이름", "폭/넓이");
 }
 function member(){
	  window.open("../member/member_form.jsp","회원가입",
			  "width=380px, height=250px");
 }
</script>
</head>
<body>
  <div class="container">   <!-- 문서 영역 분류 -->
    <header> <!-- 머리말 영역 -->
        <div id="login"> 
           <a href="<%=request.getContextPath() %>/descartes/index.jsp">홈</a> | 
           <a href="#" onclick="login_window()">로그인</a> | 
           <a href="#" onclick="member()">회원가입</a>
        </div>       
       <hgroup>  <!-- 제목과 부제목을 그룹으로 묶어준다. -->
         <h1>데카르트, 서양 근대철학의 창시자</h1>
         <h2>Rene Descartes, 1596~1650</h2>
       </hgroup>
    </header> 
    <nav class="nav"> <!-- 네비게이션 영역 -->
	   <ul> <!-- 순서 없는 목록 -->
         <li> <a href="../birth/birth_list.jsp"> 탄 생</a></li>
         <li> <a href="../writing/writing_list.jsp"> 저 서</a> </li>
         <li> <a href="../philosophy/philosophy_list.jsp"> 철 학</a> </li>
         <li> <a href="../saying/saying_list.jsp"> 명 언</a> </li>
      </ul>
    </nav>