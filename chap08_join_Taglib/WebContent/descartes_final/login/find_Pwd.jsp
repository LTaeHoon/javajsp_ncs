<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!-- 외부 스타일 시트 파일 링크(../는 상위 폴더로 이동) -->
<link rel="stylesheet" href="../css/login.css">
<!-- 제이쿼리 라이브러리 링크 -->
<script src="../js/jquery-3.js"></script>
<script>
	function find_check(){
		if($("#id").value==""){ 
			alert("아이디를 입력하세요");
			$("#id").focus(); 
			return false; // 호출한 곳으로 false 리턴
		}
		if(($("#name").val())==""){ 
			alert("이름을 입력하세요");
			$("#name").focus(); // 커서 이동
			return false; 
			// false를 리턴 받으면 이후 태그 동작 멈춤
		}	
		
		
	}

</script>

<!-- 비밀번호 키가 비었있으면 -->
<c:if test="${empty password}">
<div id="login_wrap">
    <h2 class="login_title">비밀번호 찾기</h2>
    <form name="f" method="post" 
         action="find_Pro.jsp" onsubmit="return find_check()">
      <table id="login_t">
        <tr> 
          <th> 아이디 </th> 
          <td> <input type="text" name="id" id="id" size="14"
                class="input_box"/>
            <!-- name 속성 : 사용자가 입력한 값을 서버에 전송하는 역할 -->
            <!-- id와 class 속성 : css또는 jquery사용되는 이름 -->     
          </td> 
        </tr>
        <tr> <!-- 행을 생성하는 태그 -->
          <th> 회원이름 </th> <!-- 열 제목 생성 태그 -->
          <td> <input type="text" name="name" 
                size="14" class="input_box"/>
          </td> 
        </tr>
      </table>
      <div id="login_menu">
        <input type="submit" value="찾기" class="login_b"/>
        <input type="reset" value="취소" class="login_b"/>
      </div>
    </form>   
  </div>
</c:if>

<c:if test="${!empty password}">
	<div id="login_wrap">
    <h2 class="login_title">비번찾기 결과</h2>
      <table id="login_t">
        <tr>
          <th> <h3>검색된 비번 : </h3></th> 
          <td> <h3><font color='red'>${password}</font></h3></td>           
        </tr>
      </table>
  </div>
</c:if>

