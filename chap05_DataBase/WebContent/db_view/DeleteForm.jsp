<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- DeleteForm.jsp -->    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>삭제 폼</title>
</head>
<style>
	td{text-align:center};
</style>
<script src="../js/jquery-3.js"></script>
<script>
$(function(){
	 $('#btn').click(function(obj){
		 
			 history.back();
		
		    	  	   
	  }); 
});
	
  function pwd_check(){
		if(confirm("삭제하시겠습니까?")==true){
			return true;
		}else{
			return false;
		}
	}
	
	
</script>
<body>
   <div align="center">
   	<table border="1">
   	<form method="post" action="../delete.do" onsubmit="return pwd_check()">
   		<tr>
   			<th colspan="2"><h3>레코드 삭제 폼</h3></th>
   		</tr>
   		<tr>
   			<th>아이디</th>
   			<td><input name="id" size="12"/></td>
   		</tr>	   
   	    <tr>
   			<th>비밀번호</th>
   			<td><input name="passwd" id="passwd" type="password" size="12"/></td>
   		</tr>
   		<tr>
   			<td colspan="2">
   			<input type="submit" value="삭제"/>&nbsp;
   			<input type="reset" value="취소" id="btn"/>
   			</td>
   		</tr>
   		</form>
   	</table>
     
   </div>
</body>
</html>


