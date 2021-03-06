<%@page import="db.DBConnection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%!
      String id;
	  String passwd;
	  String name;
	  String reg_date; 
    %>
    
<style>
	td{text-align:center};
</style>    
<table border="1" width="400" align="center">
   <tr>
   		<th colspan="4"><h3>회원정보 상세보기</h3></th>
   </tr>
   <tr>
      <th> 아이디 </th> <th> 비밀번호</th>
      <th> 이 름  </th> <th> 등록날짜</th>
   </tr>
   <% // java or jsp 문법
   Connection con = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   String sql = null;
   
   String get_id = request.getParameter("id");
   
   try{
	  DBConnection db = new DBConnection();
	  con = db.con;	//db 연동 객체 생성
 	  // 3단계 : sql 작성
 	  sql = "select * from member1 where id=?";
 	  pstmt = con.prepareStatement(sql);
 	  pstmt.setString(1,get_id);
 	  rs = pstmt.executeQuery(); // select문 실행
 	  if(rs.next()){
 		  id = rs.getString("id");
 		  passwd = rs.getString("passwd");
 		  name = rs.getString("name");
 		  reg_date 
 		     = rs.getString("reg_date").substring(0, 10); //20170118 03:25:30
 		  %> <!--  html 영역 -->
 		  <tr>
 		     <td> <%= id %> </td> 
 		     <td> 
 		      <input type="password" value ="<%= passwd %>" 
 		             size="10" readonly="readonly"
 		             style="border:0px;text-align:center" />
 		     </td>
 		     <td> <%= name %> </td> <td> <%= reg_date %> </td>
 		  </tr> 	
 		  	  
 		  <%
 	  }else{
 		  %>
 		  <tr>
	 		  <td colspan="4">
	 		  	<h3> 해당 아이디가 없습니다.</h3>
	 		  </td>
 		  </tr>
 		  <%
 	  }
 	  rs.close(); pstmt.close(); con.close();
   }catch(Exception e){
 	  e.printStackTrace();
 	  out.println("DB 연결에 실패하였습니다.");
   }  
   %>
   <tr>
		   	<td colspan="4">
		   		<a href="SelectTest.jsp">목록</a>
		   		<a href="UpdateForm.jsp?id=<%=id%>&name=<%=name%>&date=<%=reg_date%>">수정</a>
		   		<a href="DeleteForm.jsp?id=<%=id%>">삭제</a>
		   	</td>
		   </tr>
   
</table>