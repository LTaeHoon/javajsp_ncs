<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/admin_header.jsp" %>
<div class="clear"></div>
<%
   int nowpage = 
      (Integer)request.getAttribute("page");
%>
<div id="article">
  <%@ include file="../include/admin_login.jsp" %>
  
  <div id="article_c">
   <!-- 본문내용 -->
   <div id="join_wrap">
    <h2 class="join_title">회원수정</h2>
    <form name="f2" method="post" 
     action="admin_member_edit_ok.do?page=<%=nowpage %>"
     onsubmit="return edit_check()">
      <table id="join_t">
        <tr> 
          <th> 회원아이디</th>
          <td>
             <input name="member_id" 
                    id="member_id" size="14"
                    value="${member.member_id}"
                    readonly="readonly" />
             <!-- 아이디는 읽기전용으로 지정 -->       
          </td>
        </tr>
        <tr> 
          <th> 비밀번호</th>
          <td>
             <input type="password" name="member_pass" 
                    id="member_pass" size="14"/>                    
          </td>
        </tr>
        <tr> 
          <th> 비밀번호 확인</th>
          <td>
             <input type="password" name="member_pass2" 
                    id="member_pass2" size="14"/>                    
          </td>
        </tr>
        <tr> 
          <th> 회원이름</th>
          <td>
             <input name="member_name" 
                    id="member_name" size="14"
                    value="${member.member_name}"/>                    
          </td>
        </tr>
        <tr> 
          <th> 닉네임</th>
          <td>
             <input name="member_nickname" 
                    id="member_nickname" size="14"
                    value="${member.member_nickname}"/>                    
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
      </table>
      <div id="join_menu">
       <input type="submit" value="수정"/>
       <input type="reset" value="취소" 
              onclick="$('#member_pass').focus();"/>
      </div>
    </form>     
   </div>
  </div>
</div>
<div class="clear"></div>
<%@ include file="../include/footer.jsp" %>



    
