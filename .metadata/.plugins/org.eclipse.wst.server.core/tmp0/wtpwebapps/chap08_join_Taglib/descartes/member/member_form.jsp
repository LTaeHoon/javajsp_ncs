<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" href="../css/member.css">
<!-- 제이쿼리 라이브러리 링크 -->
<script src="../js/jquery-3.js"></script>
<script>
function check() {
 	if($.trim($("#id").val())==""){
		alert("아이디를 입력하세요.");	
		$("#id").val("").focus();		
		return false;			
	} 
	if($.trim($("#name").val())==""){	
		alert("이름을 입력하세요.");		
		$("#name").val("").focus();	
		return false;	
	}
 	if($.trim($("#password").val())==""){
		alert("패스워드를 입력하세요.");	
		$("#password").val("").focus();		// 포커스 이동
		return false;			
	}
 	if($.trim($("#password").val())!=$.trim($("#password2").val())){
 		alert("비밀번호가 서로 다릅니다");
 		$("#password").val("").focus();
 		return false;
 	}
 }
</script>
</head>
<div id="member_wrap">
  <h2 class="member_title">회원 가입</h2>
<form action="member_Pro.jsp" method="post" onsubmit="return check()">
<table id="member_t">
  <tr> <!-- 행을 생성하는 태그 -->
    <th> 회원아이디 </th> <!-- 열 제목 생성 태그 -->
    <td> <input name="id" id="id" class="input_box"></td>
  </tr>
  <tr> <!-- 행을 생성하는 태그 -->
    <th> 비밀번호 </th> <!-- 열 제목 생성 태그 -->
    <td> <input type="password" name="password" id="password" class="input_box"></td>
  </tr>  
  <tr> <!-- 행을 생성하는 태그 -->
    <th> 비밀번호확인 </th> <!-- 열 제목 생성 태그 -->
    <td> <input type="password" name="password2" id="password2" class="input_box"></td>
  </tr>  
   <tr> 
    <th> 회원이름 </th> <!-- 열 제목 생성 태그 -->
    <td> <input name="name" id="name" class="input_box"></td>
  </tr>
</table>
   <div id="member_menu">
        <input type="submit" value="가입" class="member_b"/>
        <input type="reset" value="취소" class="member_b"/> 
   </div>
</form>
 </div>