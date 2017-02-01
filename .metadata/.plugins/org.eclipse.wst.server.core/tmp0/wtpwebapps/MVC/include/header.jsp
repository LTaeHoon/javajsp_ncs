<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인 화면</title>
<link rel="stylesheet" type="text/css" href="./css/main.css" />
<link rel="stylesheet" type="text/css" href="./css/board.css" />
<link rel="stylesheet" type="text/css" href="./css/member.css" />
<link rel="stylesheet" type="text/css" href="./css/bbs.css" />
<link rel="stylesheet" type="text/css" href="./css/index.css" />
<link rel="stylesheet" type="text/css" href="./css/admin.css" />
<link rel="stylesheet" type="text/css" href="./css/gongji.css" />
<!-- css 외부 포함파일을 불러오는 것. css는  디자인 UI 를 작성 -->
<script src="./js/jquery-3.js"></script>
<!-- jQuery 자바스크립트 라이브러리 외부 파일을 읽어온다 -->
<script src="./js/board.js"></script>
<script src="./js/member.js"></script>
<script src="./js/bbs.js"></script>
<script src="./js/gongji.js"></script>
<script src="./js/admin.js"></script>
</head>
<body> 
<div id="site">  
  <h3 align="center">사용자 단 페이지 영역 </h3>   
</div>
<div id="main_wrap">
  <!-- 상단 header -->
  <div id="header">
    <div id="logo">
     <a href="./index.jsp" onfocus="this.blur()">
     <img src="./images/logo.jpg" width="200" border="0" />
     <!-- 그림삽입 태그 -->
    </div>
    
    <div id="top_menu">
     <ul>
      <li><a href="gongji_list.do" onfocus="this.blur()">공지사항</a>      
      <li>
      <a href="./board_list.do"
       onfocus="this.blur()">게시판</a></li>
      <li><a href="bbs_list.do" 
       onfocus="this.blur()">자료실</a></li>
       <li><a href="admin_login.do" onfocus="this.blur()">관리자</a></li>   
     </ul>
    </div>
    
    <div id="top_login">
     <ul>
      <li><a href="./index.jsp" onfocus="this.blur()">홈</a></li>
       &nbsp;
      <!-- &nbsp;은 한칸 공백을 띄워준다 .-->
      <li><a href="./member_Login.do" 
      onfocus="this.blur()">로그인</a></li>
      <li><a href="./member_Join.do"
      onfocus="this.blur()">회원가입</a></li>
     </ul>
    </div>
  </div>
  