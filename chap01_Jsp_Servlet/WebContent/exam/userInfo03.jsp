<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <script type="text/javascript" src="../js/jquery-3.js"></script>
 <script>
 	function data_check(){
 		if($('#name').val()==""){
 			alert('이름를 입력하세요.');
 			$('#name').focus();
 			return false; //서버 전송 차단
 		}
 		if($('#age').val()==""){
 			alert('나이를 입력하세요.');
 			$('#age').focus();
 			return false; //서버 전송 차단
 		}
 	}
 </script>

</head>
<body>
	<form name="frm" method="post" action="userInfoJsp.jsp" onsubmit="return data_check()">
		<table align="center" border="1">
			<tr>
				<th width="50">이름</th>
				<td><input name ="name" id="name"/></td>
			</tr>
			<tr>
				<th width="50">나이</th>
				<td><input name ="age" id="age"/></td>
			</tr>
			<tr>
				<th width="50">주소</th>
				<td><input name ="address"/></td>
			</tr>
			<tr>
			 <th colspan="2">
			 <input type="submit" value="전송"/>
			 <input type="reset" value="취소"/>
			 </th>
			</tr>
		</table>
	</form>
</body>
</html>