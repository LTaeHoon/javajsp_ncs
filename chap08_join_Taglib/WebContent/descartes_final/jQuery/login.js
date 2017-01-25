/** login.js */
function login_check() {
	/* javascript 방식 */
	if(window.document.frm.id.value==""){ //아이디 체크
		alert("아이디를 입력하세요");
		frm.id.focus(); // 커서 이동
		return false; // 호출한 곳으로 false 리턴
	}
	/* jQuery 방식 */
	if($.trim($("#pwd").val())==""){ // 비번 체크
		alert("비번을 입력하세요");
		$("#pwd").val("").focus(); // 커서 이동
		return false; 
		// false를 리턴 받으면 이후 태그 동작 멈춤
	}	
}
  /*
   *  선택자 : 태그, #id, .class
   * 1. $('선택자') : = jQuery('선택자') 
   *   -> 지정된 선택자의 요소(엘리먼트)를 가져온다.
   * 2. $('선택자').함수1().함수2();
   *   -> jQuery함수를 여러개 호출, 왼쪽 - > 오른쪽 실행
   *   -> $('#id').val("").focus();
   *   -> val() : 값을 획득과 지정
   * 3. $.함수() : jQuery함수 호출
   *   -> $.trim($('#id')) : id 요소를 가져와서 
   *      앞/뒤 공백 제거
   */






