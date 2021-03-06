<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데카르트</title>
<link href="./css/style.css" rel="stylesheet" type="text/css">
 <script>
  function login_window(){ // 사용자 정의 함수
	  window.open("./login/login_form.jsp","로그인",
			     "width=380px, height=250px");
      // open("파일명", "창이름", "폭/넓이");
  }
  function member(){
	  window.open("./member/member_form.jsp","회원가입",
			  "width=380px, height=250px");
  }
</script>
</head>
<body>
  <div class="container">   <!-- 문서 영역 분류 -->
    <header> <!-- 머리말 영역 -->
        <div id="login"> 
           <a href="./index.jsp">홈</a> | 
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
         <li> <a href="./birth/birth_list.jsp"> 탄 생</a></li>
         <li> <a href="./writing/writing_list.jsp"> 저 서</a> </li>
         <li> <a href="./philosophy/philosophy_list.jsp"> 철 학</a> </li>
         <li> <a href="./saying/saying_list.jsp"> 명 언</a> </li>
      </ul>
    </nav>
  <!-- 이하 section, article, aside, footer 시멘틱 태그 추가 -->
  <section class="content"> <!-- 문서의 절 : 여러 개 사용-->
    <h2>데카르트 소개</h2>  <!-- 절 제목 -->   
     <article> <!-- 본문 -->
      <h3>“나는 생각한다. 고로 존재한다.” 그러나 나의 존재의 근거는 신</h3>
      <p> “화이트헤드가 말한 것처럼 유럽 철학이 플라톤에 대한 각주라면, 근대 유럽 철학은 데카르트에 대한 각주다.”</p>
      <p> 근대는 무엇에서든 확실하고 단단한 토대를 요구하는 시대다. 내가 알고 있다고 여기는 것, 내가 믿고 있는 것 등</p>
      <p>  그 어떤 것에서든 분명하고 확실한 근거를 요구한다. 이러한 요구가 바로 근대적 합리정신이며, 데카르트는 </p>
      <p> 근대의 철학적 출발점이었다.</p>
      <p> 요컨대 “나는 생각한다. 고로 존재한다.” 데카르트는 이 명제야말로 다른 모든 것의 근거가 되는 가장 기초적인 </p>
      <p> 명제라 보았다. 데카르트는 이 명제를 “신은 존재한다”는 명제와 결합시킨다.</p>

    <div class="picture"><img src="images/bg2.png" width="680" height="195" 
     alt="오른쪽 탁자에 있는 여왕의 오른쪽 인물이 데카르트"></div>      
  </article>
</section>
  <aside class="sidebar"> <!-- 문서 보조내용(알림,광고,링크 등)-->
    <h3 align="center">◐ 저서 구입 ◑</h3>
    <p>저서 구입을 원하는 분은 전화 010-1234-5678로
         연락주시기 바랍니다. </p>
    <img src="images/book1.png" width="130" height="160">
    <img src="images/book2.png" width="130" height="160">    
  </aside>    
   <footer> <!-- 꼬리말 -->
    <p>글 : 표정훈 / 저술가, 번역가 </p>  
    <address>E-mail : author@naver.com</address> <!-- e-mail 주소 -->
    <p> Copyright ⓒ. All rights reserved.</p>      
  </footer>      
  </div>
</body>
</html>