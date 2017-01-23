<%@page import="db.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- SelectTest.jsp : member1 테이블 전체 검색 -->
<style>
   td{text-align:center}
</style>

<%
	String get_id = request.getParameter("id");
	String get_name = request.getParameter("name");
%>
<div align="center">
<h3> member1 테이블 목록 :
	(추가된 id :
	<font color='red'>
	<%
		if(get_id==null){
			out.println("없음");
		}else{
			out.println(get_id +", name : ");
			out.println(get_name);
		}
	
	%>
	</font>
	)
 </h3>
<table border="1" width="400">
   <tr>
      <th> 아이디 </th> 
      <th> 이 름  </th>
   </tr>
   <% // java or jsp 문법
   Connection con = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   String sql = null;
   
   try{
	  DBConnection db = new DBConnection();
 	  con = db.con;	//db 연동 객체 생성
 	  // 3단계 : sql 작성
 	  sql = "select * from member1 order by name desc";
 	  pstmt = con.prepareStatement(sql);
 	  rs = pstmt.executeQuery(); // select문 실행
 	  while(rs.next()){
 		  String id = rs.getString("id");
 		  String passwd = rs.getString("passwd");
 		  String name = rs.getString("name");
 		  String reg_date 
 		     = rs.getString("reg_date").substring(0, 10); //20170118 03:25:30
 		  %> <!--  html 영역 -->
 		  <tr>
 		     <td> <%= id %> </td> 
 		     <td><a href="Content.jsp?id=<%=id%>"> <%= name %></a> </td>
 		  </tr> 		  
 		  <%
 	  } // while end
 	  rs.close(); pstmt.close(); con.close();
   }catch(Exception e){
 	  e.printStackTrace();
 	  out.println("DB 연결에 실패하였습니다.");
   }  
   %>
   <tr>
   	<td colspan ="2">
   		<a href="InsertForm.jsp"> [레코드 삽입] </a>
  	</td>
   </tr>
</table>
  
</div>





