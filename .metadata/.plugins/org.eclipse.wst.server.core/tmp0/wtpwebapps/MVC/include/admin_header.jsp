<%@ page contentType="text/html; charset=UTF-8"%>
    <!-- html  주석문기호. 위 부분은 jsp(java server pages) 에서
    지시자라고 한다. 즉   jsp 정의문 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인 화면</title>
<link rel="stylesheet" type="text/css" href="./css/main.css" />
<link rel="stylesheet" type="text/css" href="./css/admin.css" />
<link rel="stylesheet" type="text/css" href="./css/agongji.css" />

<script src="./js/jquery.js"></script>
<script src="./js/admin.js"></script>
</head>
<body> 
<div id="site">  
  <h3 align="center">관리자 단 페이지 영역 </h3>   
</div>
<div id="main_wrap">
  <!-- 상단 header -->
  <div id="header">
    <div id="logo">
     <a href="./index.jsp" onfocus="this.blur()">
     <img src="./images/logo.jpg" width="200" border="0" /></a>
     <!-- 그림삽입 태그 -->
    </div>
    
    <div id="top_menu">
     <ul>
      <li><a href="admin_gongji_list.do" onfocus="this.blur()"><font color="green">공지사항</font></a></li>
      <li><a href="#"onfocus="this.blur()"><font color="green">게시판</font></a></li>
      <li><a href="#" onfocus="this.blur()"><font color="green">자료실</font></a></li>
      <li><a href="admin_member_list.do" onfocus="this.blur()"><font color="green">회원관리</font></a></li>
     </ul>
    </div>
    
    <div id="top_login">
     <ul>
      <li><a href="./admin_main.do" onfocus="this.blur()">관리자 홈</a></li>      
      <li><a href="./admin_logout_ok.do" onfocus="this.blur()">
      <font color="green">로그아웃</font></a></li>
      
     </ul>
    </div>
  </div>