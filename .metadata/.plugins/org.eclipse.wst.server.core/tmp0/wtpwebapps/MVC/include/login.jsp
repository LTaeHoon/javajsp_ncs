<%@ page contentType="text/html; charset=UTF-8"%>
<div id="left_menu">
      <script>
       function login_check(){//함수 정의
    	   if(window.document.f.id.value==""){
    		    alert("아이디를 입력하세요!");//경고창 띄운다.
    		    f.id.focus();//포커스를 이동
    		    return false;
    	   }
           if($.trim($("#pwd").val())==""){
        	   alert("비번을 입력하세요!");
        	   $("#pwd").val("").focus();//초기화 하고 포커스 이동
        	   return false;
       	   }
       }
       
       /*공지창 띄우기*/
       function pwd_find(){//함수정의
          window.open("./pwd_Find.do","비번찾기",
		"width=300px,height=300px,scrollbars=yes");
       }
      </script>
      <form name="f" method="post" action="member_Login_ok.do"
      onsubmit="return login_check()">
        <table id="login_t">
         <tr>
          <th>아이디</th>
          <!-- th태그는 열을 만들고 글자를 중앙 정렬,진하게 해준다. -->
          <td>
          <input type="text" name="id" id="id" 
          class="input_box" size="14" />
          </td>
         </tr>
         
         <tr>
           <th>비밀번호</th>
           <td>
            <input type="password" name="pass" id="pwd" 
            size="14" class="input_box" />
           </td>
         </tr>
        </table>
        <div id="login_menu">
        <input type="submit" value="로그인" class="input_b"/>
         <input type="reset" value="취소" class="input_b"
               onclick="$('#id').focus();" />
         <input type="button" value="비번찾기" class="input_b" 
         onclick="pwd_find()" />         
        </div>
      </form>
     </div>