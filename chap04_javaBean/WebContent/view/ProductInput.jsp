<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 제품 등록 화면 </title>
<script src="../js/jquery-3.js"> </script>
<script>
   function data_check(){
	   if($("#sabun").val()==""){
		   alert("사번을 입력하세요.")
		   $("#sabun").focus();
		   return false;
	   }
	   if($("#saname").val()==""){
		   alert("이름을 입력하세요.")
		   $("#saname").focus();
		   return false;
	   }
	   if($("#procode").val()==""){
		   alert("제품코드를 선택하세요.")
		   $("#procode").focus();
		   return false;
	   }
   } // end
   
   $(function(){ // 브라우저 로딩 시 자동 실행
	   $("#procode").change(function(obj){
		   // select 변화시 실행되는 내용 
		   var value = $(obj.target).val();
		   if(value == "k0001"){ // 냉장고, 650000
			   $("#proname").attr('value', '냉장고'); //attr('속성', '값')
			   $("#price").attr('value', 650000);
		   }
		   if(value == "k0002"){ // 세탁기, 750000
			   $("#proname").attr('value', '세탁기'); //attr('속성', '값')
			   $("#price").attr('value', 750000);
		   }
		   if(value == "k0003"){ // HDTV, 950000
			   $("#proname").attr('value', 'HDTV'); //attr('속성', '값')
			   $("#price").attr('value', 950000);
		   }
	   });
   
       $("#btn").click(function() {
		   // [취소] 버튼 클릭 시 실행
    	   $("#proname").attr('value', '');
    	   $("#price").attr('value', '');		   
	   });       
   });
</script>
</head>
<body>
	<div align="center">
	<h2> 제품 등록하기 </h2>
	<hr>
	<form method="post" action="<%=request.getContextPath()%>/Productdo"
	      onsubmit="return  data_check()">
	  <table border="1" width="300">  
	    <tr>
	        <th>사 번 </th>
	        <td> <input name="sabun" id="sabun"> </td>
	    </tr>
	    <tr>
	        <th> 이 름 </th>
	        <td> <input name="saname" id="saname"> </td>
	    </tr>
	    <tr>
	        <th> 제품코드 </th>
	        <td> 
	           <select name="procode" id="procode">
	         	<option value="">## 제품코드 선택 ##</option>
	         	<option value="k0001">k0001</option>
	         	<option value="k0002">k0002</option>
	         	<option value="k0003">k0003</option>
	      	  </select> 
	        </td>
	    </tr>
	    <tr>
	       <th> 제 품 명 </th>
	       <td> <input name="proname" id="proname" readonly> </td>
	    </tr>
	     <tr>
	       <th> 가 격  </th>
	       <td> <input name="price" id="price" readonly> </td>
	    </tr>
        <tr>
            <td colspan="2" align="center">
            	<input type="submit" value="저장">&nbsp;&nbsp;
	  			<input type="reset" value="취소" id="btn">
            </td>
        </tr>
	  </table>  
	</form>
	</div>
   </body>
</html>
   


