<%@page import="db.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- main.jsp -> member_list.jsp : 전체회원목록보기 -->

<%
   // session 속성이 admin & 속성 유효 검증
   String id = (String)session.getAttribute("id");
   if(id==null || !id.equals("admin")){
	   out.println("<script>");	   
	   out.println("location.href='loginForm.jsp'");
	   out.println("</script>");	   
   }
   
   Connection con = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   String sql = null;
   
   try{
	   DBConnection db = new DBConnection();
	   con = db.con;
	   sql = "select * from jsp_member2";
	   pstmt = con.prepareStatement(sql);
	   rs = pstmt.executeQuery();
	   %>
	     <table border="1" width="300" align="center">
	       <tr>
	          <th colspan="2"><h3> 회원목록</h3> </th>
	       </tr>
	       <tr>
	          <th> 회원 아이디 </th> <th> 삭제유무 </th>
	       </tr>
	       <%
	          while(rs.next()){
	            %>
	        	<tr>
	        	    <td align="center"> 
	        	      <a href="member_info.jsp?id=<%=rs.getString("id")%>">
	        	        <%=rs.getString("id") %> 
	        	      </a> 
	        	     </td>
	        	    <td align="center"> 
	        	      <a href="member_delete.jsp?id=<%=rs.getString("id")%>"
	        	         onclick="return confirm('삭제하시겠습니까?')"> 
	        	            삭제 
	        	      </a> 
	        	    </td> 
	        	</tr>
	        	<%  
	          } // while end
	       %>
	     </table>
	   <%
    pstmt.close(); rs.close(); con.close();	   
   }catch(Exception e){
	   e.printStackTrace();
   }
%>




