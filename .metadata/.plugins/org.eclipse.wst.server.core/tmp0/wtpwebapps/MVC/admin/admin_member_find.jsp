<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page import="java.util.*"%>
<%@ page import="com.member.model.*" %>
    
<%@ include file="../../include/admin_header.jsp" %>
<div class="clear"></div>
<%
request.setCharacterEncoding("UTF-8");
List<MemberBean> memList=(List<MemberBean>)request.getAttribute("memList");
//setAttribute()에 의해서 Object형으로 업캐스팅 되면서
//키값에 저장된다. 반환되는 값도 다운캐스팅을 해서 저장한다.
//다운캐스팅은 업캐스팅이 된것에 한해서 다운캐스팅이 된다.
//레퍼런스간의 캐스팅 즉 다운(업)캐스팅은 상속이 된것에 한에서만
//허용된다.
//int listcount1=((Integer)request.getAttribute("listcount1")).intValue();
//int listcount2=((Integer)request.getAttribute("listcount2")).intValue();

int nowpage=((Integer)request.getAttribute("page")).intValue();
int maxpage=((Integer)request.getAttribute("maxpage")).intValue();
int startpage=((Integer)request.getAttribute("startpage")).intValue();
int endpage=((Integer)request.getAttribute("endpage")).intValue();
%>
 <div id="article">
  <%@ include file="../include/admin_login.jsp" %>
  
  <div id="article_c">
<!-- 본문 내용 -->
   <div id="aMember_wrap">
    <div id="aMember_list">
      <h2 class="aMember_title">관리자 검색회원 목록</h2>
		<div id="aMember_count">
			검색회원 수 : ${listcount}<br />
		</div>

		<table id="aMember_t">
			<tr>
				<td class="id">아이디</td>
				<td class="name">회원이름</td>
				<td class="phone">폰번호</td>
				<td class="date">가입날짜</td>
				<td class="state">가입유무</td>
				<td class="no">수정</td>
				<td class="no">삭제</td>
			</tr>
			<%	    	
	 if((memList != null) && (memList.size()>0)){
		for(int i=0;i<memList.size();i++){
			MemberBean m=memList.get(i);			
	%>
			<tr align="center" valign="middle" >

				<td align="center">
				 <a
					href="admin_mem_cont.do?mem_id=<%=m.getMember_id()%>&page=<%=nowpage%>&state=cont"
					onfocus="this.blur();"><%=m.getMember_id()%></a>
				</td>

				<td><%=m.getMember_name() %></td>
				<td><%=m.getMember_nickname()%></td>
				<td><%=m.getMember_regdate().substring(0,10)%></td>
				<td><%=m.getMember_state()%></td>
				<td>
<input type="button" value="수정" class="admin_b"
onclick="location='admin_member_edit.do?mem_id=<%=m.getMember_id()%>&page=<%=nowpage%>'" />				
				</td>
				<td>
<input type="button" value="삭제" class="admin_b"
onclick="if(confirm('정말로 삭제 하시겠습니까?')){
location='admin_member_del_ok.do?mem_id=<%=m.getMember_id()%>&page=<%=nowpage%>' 
}else{ return; }" />
<!-- 자바스크립트에서 window객체 하위의 confirm()메서드는 확인/취소 단추
를 가진 경고창을 만들어 준다. 확인단추를 클릭하면 반환값으로 true로 리턴하고,
취소 단추를 클릭하면false를 반환한다. 즉 관리자 모드에서 삭제 유무를 다시
확인하기 위해서 주로 사용한다. 확인을 클릭하면 삭제창으로 이동하고,취소를
클릭하면 삭제를 안하고 그대로 현재창에 있게 된다. --> 				
				</td>
			</tr>
			<%	   
		} }else{%>
		    <tr>
		     <th colspan="8">검색 회원이 없습니다!</th>
		    </tr> 
		<% } %>
		</table>
		<div id="aMember_paging">
			<%if(nowpage<=1){ %>
			[이전]&nbsp;
			<%}else{ %>
			<a href="admin_member_find.do?page=<%=nowpage-1 %>&find_name=${find_name}&find_field=${find_field}" onfocus="this.blur();">[이전]</a>&nbsp;
			<%} %>

			<%for(int a=startpage;a<=endpage;a++){
				if(a==nowpage){%>
			[<%=a %>]
			<%}else{ %>
			<a href="admin_member_find.do?page=<%=a %>&find_name=${find_name}&find_field=${find_field}" onfocus="this.blur();">[<%=a %>]
			</a>&nbsp;
			<%} %>
			<%} %>

			<%if(nowpage>=maxpage){ %>
			[다음]
			<%}else{ %>
			<a href="admin_member_find.do?page=<%=nowpage+1 %>&find_name=${find_name}&find_field=${find_field}" onfocus="this.blur();">[다음]</a>
			<%} %>
		</div>
				
		<!-- 관리자 회원 검색 부분 -->
		<div id="aMember_find">
		  <script>
		    function find_check(){
		    	if($.trim($("#find_name").val())==""){
		    		alert("검색어를 입력하세요!");
		    		$("#find_name").val("").focus();
		    		return false;
		    	}
		    }
		  </script>
		  <form method="get" action="admin_member_find.do"
		  onsubmit="return find_check()">
		      <table id="aGlistFind_t">
		        <tr>
		         <td>
		         <select name="find_field">
		          <option value="member_id" 
		          <c:if test="${find_field == 'mem_id'}">
		       ${'selected'}</c:if>>아이디</option>
		          <option value="member_name" 
		          <c:if test="${find_field == 'mem_name'}">
		       ${'selected'}</c:if>>회원이름</option>		          	          
		         </select>
		         <input name="find_name" id="find_name" size="10"
		         class="admin_box" value="${find_name}" />
		         <input type="submit" value="검색" class="admin_b"  />
		         <input type="button" value="목록" 
                   onclick="location='admin_member_list.do'"/>
		         </td>
		        </tr>
		      </table>
		  </form>
		</div>
    </div>
    </div>
   </div> 
  </div>
  <div class="clear"></div>
<%@ include file="../include/footer.jsp" %>