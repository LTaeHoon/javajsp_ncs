<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- login.html -->
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<!-- 외부 스타일 시트 파일 링크(../는 상위 폴더로 이동) -->
<link rel="stylesheet" href="../css/login.css">
<!-- 제이쿼리 라이브러리 링크 -->
<script src="../js/jquery-3.js"></script>
<!-- 외부 제이쿼리 파일 링크 -->
<script src="../js/login.js"></script>
<script>
	function findPwd(){
		location.href="find_Pwd.jsp"		
	}
</script>
</head>
<body>
  <div id="login_wrap">
    <h2 class="login_title">회원 로그인</h2>
    <form name="f" method="post" 
         action="login_Pro.jsp"onsubmit="return login_check()">
      <table id="login_t">
        <tr> <!-- 행을 생성하는 태그 -->
          <th> 아이디 </th> <!-- 열 제목 생성 태그 -->
          <td> <input type="text" name="id" id="id" size="14"
                class="input_box"/>
            <!-- name 속성 : 사용자가 입력한 값을 서버에 전송하는 역할 -->
            <!-- id와 class 속성 : css또는 jquery사용되는 이름 -->     
          </td> 
        </tr>
        <tr> <!-- 행을 생성하는 태그 -->
          <th> 비밀번호 </th> <!-- 열 제목 생성 태그 -->
          <td> <input type="password" name="pwd" id="pwd" 
                size="14" class="input_box"/>
          </td> 
        </tr>
      </table>
      <div id="login_menu">
        <input type="submit" value="로그인" class="login_b"/>
        <input type="reset" value="취소" class="login_b"/> 
        <input type="button" value="비번찾기" onclick="findPwd()" class="login_b"/>
      </div>
    </form>   
  </div>
</body>
</html>