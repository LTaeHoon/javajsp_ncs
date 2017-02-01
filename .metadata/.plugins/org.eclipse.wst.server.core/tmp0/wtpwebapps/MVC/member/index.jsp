<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.member.model.*" %>
<!-- dao 패키지의 모든 클래스를 사용하기 위해서 임포트 시킴 -->
<%@ page import="java.util.*" %>
<!--  컬렉션 클래스를 사용하기 위해서 임포트 시킴 -->
<%@ include file="../include/header.jsp" %>
<!--  ../ 한 단계 상위 폴더로 이동, 외부 포함 파일을 읽어오는 jsp 형식  -->

<div class="clear"></div>

 <div id="article">
  <%@ include file="../include/login.jsp" %>
  
  <div id="article_c">
	<%
		String uid = (String)session.getAttribute("id");
 		if(uid == null){ // id가 널인 경우 로그인 페이지 이동
 	%>
 		<jsp:forward page="member_login.jsp" />
 	<% } %>
 	<%
 	//String nickname=(String)session.getAttribute("nickname");
 	//String uid=(String)session.getAttribute("id");3B
 	String member_addr1=(String)session.getAttribute("addr");
 	String member_addr2=member_addr1.substring(0,7); 	
 	%>
<html>
<head>
<title>메인화면</title>
</head>
<body>
<div id="index_wrap">
<table width="250" border="0" cellpadding="0" cellspacing="0" align="center">
<tr>
<td>
<table width="250" border="0" cellpadding="0" cellspacing="0">
 <form name="logoutForm" method="post" action="member_Logout.do">
 <!-- *.do 방식으로 링크 수정
    action="member/member_logout.jsp"를
    action="member_Logout.do"로 수정
    실제 수행되는 파일 member/member_logout.jsp
    수행되도록 수정
  -->
 <tr>
  <td align="center"><a href="member_edit.do" onfocus="this.blur()">정보수정</a></td>
  <td align="center"><a href="member_del.do" onfocus="this.blur()">회원탈퇴</a></td> 
  <td align="center"><a href="javascript:logoutForm.submit()">로그아웃</a></td>
 <!-- <td align="center"><input type="submit" value="로그아웃"></td> -->
</tr>
</form>
</table>
</td>
</tr>

<tr>
<td>
<table width="250" height="150" border="1" bordercolor="blue" cellspacing="0" cellpadding="0">

<tr>
<td>
<a href="#">${nickname}</a><img src="./images/nickname.png" border="0" align="absmiddle" alt="닉네임 이미지"/>
</td>
<td rowspan="4" align="center"> 
<img src="upload${profilename}" width="100" height="110" />
</td>
</tr>

<tr>
   <td> <a href="#"><%=member_addr2%></a> </td>
</tr>

<tr>
    <td>  <a href="#">메일: 5개</a>  </td>
</tr>

<tr>
<td>  <a href="#">쪽지: 8개</a> </td>
</tr>
</table>
</td>
</tr>
</table>
</div> <!-- id="index_wrap" -->
</body>
</html>

</div>      
</div>

<div class="clear"></div>
<%@ include file="../include/footer.jsp" %>