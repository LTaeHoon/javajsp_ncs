<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>개인정보 입력</title>
<script type="text/javascript" src="../js/jquery-3.js"></script>
<script>
 function data_check(){
	 	
		if($('#car').val()=="#"){
			alert('차종을 선택하세요.');
			return false; //서버 전송 차단
		}
		
	} 
</script>
</head>
<body>
	<h2>개인정보 입력 화면</h2>
	<form method="post" action="../pInfo" onsubmit="return data_check()">
	<fieldset>
		<legend>개인정보</legend>
		<p>이름 <input name="name" id="name" size="10"/></p>
		<p>성별<br>
		<input type="radio" name="gender" id="gender" value="남자"/> 남자
		<input type="radio" name="gender" id="gender" value="여자"/> 여자
		</p>
		<p>
		차종 선택 :
		<select name="car" id="car">
			<option value="#">##차종 선택##</option>
			<option value="./images/car1.gif">제네시스</option>
			<option value="./images/car2.gif">소나타</option>
			<option value="./images/car3.gif">그렌져</option>
			<option value="./images/car4.gif">i 30</option>
		</select>
		</p> 
		<p>
		수신설정<br>
		<input type="checkbox" name="option" id="option" value="email"/> 메일 수신 허용<br>
		<input type="checkbox" name="option" id="option" value="sms"/> SMS 수신 허용
		</p>
		<input type="submit" value="확인"/>
		<input type="reset" value="취소"/>
	</fieldset>
	</form>
</body>
</html>