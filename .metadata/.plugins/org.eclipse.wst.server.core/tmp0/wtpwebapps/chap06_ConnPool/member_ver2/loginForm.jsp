<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- member/loginForm.jsp -->    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 제이쿼리 라이브러리 링크 -->
<script src="../js/jquery-3.js"></script>

<script>
  $(function(){ 
	// 현재 웹문서가 브라우저로 로딩될 때 자동 호출 무명함수
	$("#submit").click(function(){
		if($("#id").val()==""){
			alert("id를 입력하세요.");
			$("#id").focus();
			return false;
		}
		if($("#pass").val()==""){
			alert("pass를 입력하세요.");
			$("#pass").focus();
			return false;
		}		
	});
  });	

</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 폼</title>
</head>
<body>   
   <form name="loginForm" action="loginProcess.jsp" 
         method="post">
    <table border="1" align="center">
      <tr>
         <th colspan="2"><h3>로그인 페이지</h3> </th>      
      </tr>
      <tr>
         <th> 아이디 </th>
         <td> <input name="id" id="id"/>
      </tr>
      <tr>
         <th> 비밀번호 </th>
         <td> <input type="password" name="pass" id="pass"/>
      </tr>
      <tr>
         <th colspan="2" align="center">
           <a href="javascript:loginForm.submit()"
              id="submit"> 로그인
           </a> &nbsp;
           <a href="javascript:loginForm.reset()">
             취소
           </a>
           <!-- javascript 인라인 방식으로 버튼 생성
                   형식) <a href="javascript:폼이름.메서드()">
            -->
            &nbsp; <a href="joinForm.jsp">회원가입</a>
         </th>
      </tr>
    </table>   
   </form>
</body>
</html>