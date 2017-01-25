<%@page import="db.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<style>
 #btn{height: 100px; width : 80px}
</style>

<section class="content"> 
<div align="center">   
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("ID");
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try{
		DBConnection db = new DBConnection();
		con = db.con;
		
		String sql = "select * from jsp_member where id=?";
		//
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if(rs.next()){
			id = rs.getString("id");
			String name = rs.getString("name");
			%>
			<table border="1" width="250" align="center">
			<tr>
				<th colspan="2">
				   <h3> <%=session.getAttribute("ID") %>님 회원 정보 </h3> 
				</th>
				<td rowspan="3" align="center">
				   <form action="logout.jsp" method="post">
     			    <input type="submit" value="로그아웃" id="btn">
     			  </form>
               </td>
			</tr>
			<tr>
				<th>회원 아이디</th>
				<td align='center'><%=id %></td>
			</tr>
			<tr>
				<th>회원 이름</th>
				<td align='center'><%=name %></td>
			</tr>
	</table>
			<%
		}else{
			%>
			<script>
				alert("아이디가 없습니다.");
				location.href="login_form.jsp";
			</script>
			<%
		}
		rs.close();pstmt.close();con.close();
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</div>
<div align="left">
<h2>데카르트 소개</h2>  <!-- 절 제목 -->   
  <article> <!-- 본문 -->
      <h3>“나는 생각한다. 고로 존재한다.” 그러나 나의 존재의 근거는 신</h3>
      <p> “화이트헤드가 말한 것처럼 유럽 철학이 플라톤에 대한 각주라면, 근대 유럽 철학은 데카르트에 대한 각주다.”</p>
      <p> 근대는 무엇에서든 확실하고 단단한 토대를 요구하는 시대다. 내가 알고 있다고 여기는 것, 내가 믿고 있는 것 등</p>
   <div class="picture"><img src="../images/bg2.png" width="680" height="195" 
     alt="오른쪽 탁자에 있는 여왕의 오른쪽 인물이 데카르트"></div>      
  <br>
  </article> 
  </div>
</section>
<aside class="sidebar"> <!-- 문서 보조내용(알림,광고,링크 등)-->
    <h3 align="center">◐ 저서 구입 ◑</h3>
    <p>저서 구입을 원하는 분은 전화 010-1234-5678로
         연락주시기 바랍니다. </p>
    <img src="../images/book1.png" width="130" height="160">
    <img src="../images/book2.png" width="130" height="160">    
  </aside>    
