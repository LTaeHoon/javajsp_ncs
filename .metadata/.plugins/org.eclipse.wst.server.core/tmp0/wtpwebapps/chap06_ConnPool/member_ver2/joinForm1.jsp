<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- member/join_form.jsp -->    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 폼</title>
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
		if($("#name").val()==""){
			alert("name를 입력하세요.");
			$("#name").focus();
			return false;
		}
	});
	$("#sel_mail").change(function(obj){ // 셀렉트 상자
	   // 1. 셀렉트 상자에서 선택한 도메인을 변수에 저장
	   var mailValue = $(obj.target).val(); 
	   // 2. email2 텍스트 상자에 도메인 표시
	   $("#email2").attr("value",mailValue);	   
	});
	
	$("#reset").click(function(){ // 다시작성
		$("#email2").attr("value","");
		$("#id").focus();
	});
	
	// 아이디 검사
	$("#idcheck_btn").click(function(){ // 마우스 클릭시 호출
		$("#idcheck").hide(); // <span> 내용 감추기
		
		// id 길이 체크
		if($("#id").val().length < 4){ // id가 4자 미만
		   var errMsg ="<font color='red'>id는 4자 이상 가능합니다.</font>";
		   $("#idcheck").text(""); // <span> 공백 초기화
		   $("#idcheck").show(); 
		   $("#idcheck").append(errMsg);
		   $("#id").val("").focus(); // id 상자에 커서 이동
		   return false;
		}	
	
	// id 중복 체크
	var userId = $("#id").val();
	$.ajax({		
		type : "post",
		url : "./member_check.jsp",
		data : {"userId" : userId},
		success : function(data){ // 통신 성공 시 값이 data 저장
			if(data == 1){ // 중복아이디
				var errMsg ="<font color='red'>중복 아이디 입니다.</font>";
				$("#idcheck").text(""); // <span> 공백 초기화
				$("#idcheck").show(); 
				$("#idcheck").append(errMsg);
				$("#id").val("").focus(); // id 상자에 커서 이동
				return false;
			}else{ // 사용가능한 아이디
				var errMsg ="<font color='blue'>사용 가능한 아이디 입니다.</font>";
				$("#idcheck").text(""); // <span> 공백 초기화
				$("#idcheck").show(); 
				$("#idcheck").append(errMsg);
				$("#pass").val("").focus(); // id 상자에 커서 이동
			}
		},
		error:function(){
			alert('data error');
		}
	}); // ajax end	
	return false;
	
   }); // mouseover end
   
}); // func end

</script>
</head>
<body>
   <form name="join" action="<%=request.getContextPath()%>/join.do" 
       method="post">
    <table border="1" align="center">
      <tr>
         <th colspan="2"> <h3>회원가입 페이지 </h3></th>
      </tr>
      <tr>
         <th> 아이디 </th>
         <td  align="center"> 
           <input name="id" id="id"/>
           <input type="submit" value="중복아이디 체크" 
                  id="idcheck_btn"/> 
           <br>
           <!-- 경고 메시지 출력 부분 -->
           <span id="idcheck"></span>         
         </td>
      </tr>
      <tr>
         <th> 비밀번호 </th>
         <td  align="center"> <input type="password" name="pass" 
               id="pass"/> </td>
      </tr>
      <tr>
         <th> 이름 </th>
         <td  align="center"> <input name="name" id="name"/> </td>
      </tr>
      <tr>
         <th> 주민번호 </th>
         <td align="center"> 
          <input name="jumin1" size="6" maxlength="6" id="jumin1"/>-
          <input name="jumin2" size="7" maxlength="7" id="jumin2"/>
         </td>
      </tr>
      <tr>
        <th> 이메일 </th>
        <td> 
          <input name="email1" id="email1" size="10">@
          <input name="email2" id="email2" size="10">
          <select id="sel_mail">
            <option value="">메일선택</option>
            <option value="naver.com">naver.com</option>
            <option value="daum.net">daum.net</option>
            <option value="gmail.com">gmail.com</option>           
          </select> 
        </td>
      </tr>  
      <tr>
         <th colspan="2" align="center">
          <a href="javascript:join.submit()"
              id="submit">회원가입</a>
             &nbsp;
          <a href="javascript:join.reset()"
              id="reset" >다시작성</a>
         </th>
      </tr>
    </table>  
   </form>
</body>
</html>