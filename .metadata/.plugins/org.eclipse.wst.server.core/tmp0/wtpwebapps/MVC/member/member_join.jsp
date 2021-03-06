<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 폼</title>
<link rel="stylesheet" type="text/css" href="./css/member.css">
<!-- 제이쿼리 라이브러리 링크 -->
<script src="./js/jquery-3.js"></script>
<!-- 회원가입에 있어서 데이터를 검증하는 외부 자바스크립트 파일 링크  -->
<script src="./js/member.js"></script>
<script>
  $(function(){ // 현재 문서가 브라우저로 로딩될 때 자동 호출되는 무명함수		
	  //아이디 검사 및 중복체크
	   $("#idcheck_btn").mouseover(function(){ // 마우스 오버 시	   
	   	    $("#idcheck").hide();//idcheck 영역을 숨김
	  		var userId=$("#member_id").val(); // 아이디 저장
	  		//1.입력 아이디 길이 체크
	  		if($.trim($("#member_id").val()).length < 4){
	  			var warningTxt='<font color="red">아이디는 4자 이상이어야 합니다.</font>';
	  			$("#idcheck").text('');// idcheck 영역 초기화
	  			$("#idcheck").show();// idcheck 영역 보임
	  			$("#idcheck").append(warningTxt);//idcheck 영역에 경고메시지 추가	   			
	  			$("#member_id").val('').focus();// member_id 텍스트 상자에 커서 이동
	  			return false;
	  		};
	  		if($.trim($("#member_id").val()).length > 12){
	  			var warningTxt='<font color="red">아이디는 12자 이하이어야 합니다.</font>';
	  			$("#idcheck").text('');
	  			$("#idcheck").show();
	  			$("#idcheck").append(warningTxt);
	  			$("#member_id").val('').focus();
	  			return false;
	  		};
	  		//2.입력 아이디 유효성 검사
	  		if(!(validate_userid(userId))){//유효성검증 함수 호출(false인 경우)
	  			var warningTxt='<font color="red">영문 소문자 시작과 숫자 및 _ 조합만 가능</font>';
	  			 $("#idcheck").text('');
	  			  $("#idcheck").show();
	  			  $("#idcheck").append(warningTxt);
	  			  $("#member_id").val('').focus();
	  			  return false;
	  		};
	  	  //아이디 중복확인
	      $.ajax({//$는  jQuery. 즉 jQuery 아작스 함수를 실행
	    	  type:"post",//데이터 전송 방식
	    	  url:"./member/member_idcheck.jsp", //서버 파일 주소 와 경로
	          data: {"userId":userId}, //useId에 변수값을 저장하여 넘김
	          datatype:"jsp",// 통신할 문서의 데이터 타입
	          success: function (data) {//통신이 성공한 경우 결과값을 data에 저장
	        	  if(data==1){//아이디가 중복인 경우      		
	        		var warningTxt='<font color="red">중복 아이디입니다.</font>';
	        		$("#idcheck").text('');
	          		$("#idcheck").show();
	          		$("#idcheck").append(warningTxt);
	            	$("#member_id").val('').focus();
	            	return false;	   	     
	        	  }else{//아이디가 중복이 아닌 경우
	        		var warningTxt='<font color="blue">사용가능한 아이디입니다.</font>';
	        		$("#idcheck").text('');
	        		$("#idcheck").show();
	        		$("#idcheck").append(warningTxt);
	        		$("#member_pass").focus(); // member_pass 상자로 이동
	        	  }  	    	  
	          },
	      	  error:function(){ // 비동기 통신 실패
	      		  alert("data error");
	      	  }
	      });//$.ajax	
	      return false; // 다음 태그 수행 금지   
	     });	   
	 //아이디 중복 체크 끝
	   function validate_userid(userId){
	 	  var pattern= new RegExp(/^[a-z][a-z0-9_]+$/);//영문소문자,숫자와_만 허용
	 	  return pattern.test(userId);
	   }
   }); // $(function()
</script>
</head>
<body>
  <div id="join_wrap">
    <h2 class="join_title">회원가입</h2>
    <form name="f" method="post" action="member_Join_ok.do"
    onsubmit="return mem_check()" enctype="multipart/form-data">
    <!-- enctype="multipart/form-data"은 이진파일(바이너리 모드)을 
       업로드 할 경우 지정하는 속성이다. -->      
   <table id="join_t">
      <tr>
         <th>회원아이디</th>
         <td><input name="member_id" id="member_id" size="14"/>            
         <input type="button" value="아이디중복체크" id="idcheck_btn"/>
         <br>
         <!-- 경고문이 출력되는 위치  -->
         <span id="idcheck"> </span>
         </td>      
      </tr>     
      <tr>
         <th>비밀번호</th>
         <td> 
           <input type="password" name="member_pass" 
                id="member_pass" size="14" />
          </td>
      </tr>            
      <tr>
         <th>비밀번호 확인</th>
         <td> 
           <input type="password" name="member_pass2" 
                id="member_pass2" size="14" />
          </td>
      </tr>
      <tr>
         <th>회원이름</th>
         <td> 
           <input name="member_name" id="member_name" size="14"/>
          </td>
      </tr>
      <tr>
         <th>닉네임</th>
         <td> 
           <input name="member_nickname" id="member_nickname" 
           size="20"/>
          </td>
      </tr>
      <tr>
         <th>우편번호</th>
         <td> 
           <input name="member_zip1" id="member_zip1" size="3"
              readonly onclick="post_search()"/>-<input 
            name="member_zip2" id="member_zip2" size="3"
            readonly onclick="post_search()"/>
          <!-- readonly 속성 : 텍스트상자에 데이터를 입력할 수 없고,
                        단지 읽기 전용으로 지정할 경우 사용하는 속성 -->
            <input type="button" value="우편번호찾기"
                   onclick="post_check()"/>                                                                
         </td>
      </tr>
      <tr>
         <th>주소</th>
         <td> 
           <input name="member_addr1" id="member_addr1" 
           size="50" readonly onclick="post_search()"/>
          </td>
      </tr>
      <tr>
         <th>나머지 주소</th>
         <td> 
           <input name="member_addr2" id="member_addr2"
            size="40"/>
          </td>
      </tr>
      <tr>
         <th>프로필 사진</th>
         <td> 
           <input type="file" name="member_profilename"/>
          </td>
      </tr>
   </table> 
   <div id="join_menu">
      <input type="submit" value="가입"/>
      <input type="reset" value="취소"
              onclick="$('#member_id').focus();"/>   
   </div>          
   </form>   
  </div>
</body>
</html>







