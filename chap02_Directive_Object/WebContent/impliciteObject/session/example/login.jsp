<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="../../../js/jquery-3.js"></script>
<script>
function data_check(){
	if($('#id').val()==""){
		alert('아이디를 입력하세요');
		$('#id').focus();
		return false;
	}
	if($('#name').val()==""){
		alert('이름을 입력하세요');
		$('#name').focus();
		return false;
	}
}	
</script>
<form name="frm" method="post" action="carProduct.jsp" onsubmit="return data_check()">

아이디 : <input name="id" id="id"/>
이 름 : <input name="name" id="name"/>
<input type="submit" value="로그인"/>

</form>


