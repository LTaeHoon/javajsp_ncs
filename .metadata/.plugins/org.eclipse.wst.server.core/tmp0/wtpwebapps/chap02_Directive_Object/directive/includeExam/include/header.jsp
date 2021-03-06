<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>데카르트</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function login_window(){
		window.open('../login/login.html','로그인','width=400px, height=250px');		
	}
	function member_window(){
		window.open('../member/member.html','회원가입','width=600px, height=420px');
	}
</script>
</head>
<body>
  <div class="container">   <!-- 문서 영역 분류 -->
    <header> <!-- 머리말 영역 -->
        <div id="login"> 
           <a href="../index.html">홈</a> | <a href="#" onclick="login_window()">로그인</a> | <a href="#" onclick="member_window()">회원가입</a>
        </div>       
       <hgroup>  <!-- 제목과 부제목을 그룹으로 묶어준다. -->
         <h1>데카르트, 서양 근대철학의 창시자</h1>
         <h2>Rene Descartes, 1596~1650</h2>
       </hgroup>
    </header> 
    <nav class="nav"> <!-- 네비게이션 영역 -->
      <ul> <!-- 순서 없는 목록 -->
         <li> <a href="../birth/birth.html"> 탄 생</a></li>
         <li> <a href="../writing/writing.html"> 저 서</a> </li>
         <li> <a href="../philosophy/philosophy.html"> 철 학</a> </li>
         <li> <a href="../saying/saying.html"> 명 언</a> </li>
      </ul>
    </nav>

    