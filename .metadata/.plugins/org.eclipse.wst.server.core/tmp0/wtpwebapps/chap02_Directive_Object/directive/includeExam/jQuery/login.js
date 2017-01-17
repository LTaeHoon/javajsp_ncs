/**
 * login.js
 */

function login_check(){
	/* javascript 예 */
	
	
	
	if(frm.id.value==''){
		alert('아이디를 입력하세요.');
		frm.id.focus();
		return false;
	}
	/*jQuery 예*/
	if($("#pwd").val()==''){   //$('선택자') : 선택자는 '태그', '#id', '.class' 가 들어갈 수 있음
		alert('비밀번호를 입력하세요.');
		$("#pwd").focus();
		return false;
	}
	var request = new XMLHttpRequest();
	var match = false;
	request.open("get", "../data/member_id.json",true);
	request.send(); // 실제 통신
	request.onreadystatechange = function(){
		 if(request.readyState == 4){ //서버 응답 완료
			 if(request.status == 200){ //정상 응답
				var obj = JSON.parse(request.responseText);
				for(var key in obj.member){
					
					if((obj.member[key].id==$("#id").val())&&(obj.member[key].pwd==$("#pwd").val())){
						match = true;
					}
				}
			if(match==true){
				alert('로그인 성공');
				
			}else{
				alert('로그인 실패');
				
			}
		 }
	 }
 }
return false;
}