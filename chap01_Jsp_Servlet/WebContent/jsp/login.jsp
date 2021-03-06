<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 화면</title>
 <!-- 제이쿼리 라이브러리 링크 -->
 <script type="text/javascript" src="../js/jquery-3.js"></script>
 <script>
 	function data_check(){
 		if($('#id').val()==""){
 			alert('아이디를 입력하세요.');
 			$('#id').focus();
 			return false; //서버 전송 차단
 		}
 		if($('#pwd').val()==""){
 			alert('비번를 입력하세요.');
 			$('#pwd').focus();
 			return false; //서버 전송 차단
 		}
 	}
 </script>
</head>
<body>
<!-- action="http://192.168.0.79:8282/chap01_Jsp_Servlet/LoginServlet" -->
	<form name="frm" method="post" 
	  action="<%=request.getContextPath() %>/LoginServlet" 
	  onsubmit="return data_check()"> <!-- 절대 경로 -->
	  <!-- 
	  	method : 데이터 전송방식(get/post) -> doGet()/doPost()
	  	action : 서버페이지 url 
	  		-> url = http://ip:port번호/디렉토리명/처리파일명
	  		-> 간소화 시, 경로명/처리파일명 (client ,server가 동일한 컴퓨터에서 작업된 경우)
	  	onsubmit : "data 검증 함수 호출"
	   -->
	 <div align="center">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" id="id"/>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pwd" id="pwd"/>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="전송" />
					<input type="reset" value="취소"/>
				</td>
				<!-- 
					type="submit": 버튼 클릭 시 action으로 지정된
					페이지로 데이터가 전송되는 방식
					name 속성 : 서버로 전송 시 값을 저장하는 변수명 지정
				 -->	
		</table>
	 </div>
	</form>	
</body>
</html>