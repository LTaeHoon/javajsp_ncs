<%@page import="db.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--member_list.jsp(id) -> member_info.jsp(id 상세보기) -->

<%
  //session 속성이 admin & 속성 유효 검증
  String id = (String)session.getAttribute("id");
  if(id==null || !id.equals("admin")){
	   out.println("<script>");	   
	   out.println("location.href='loginForm.jsp'");
	   out.println("</script>");	   
  }
  
  // id 파리미터 받기
  String user_id = request.getParameter("id");
  
  Connection con = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  String sql = null;
  
  try{
	  DBConnection db = new DBConnection();
	  con = db.con;
	  sql = "select * from jsp_member2 where id=?"; 
	  pstmt = con.prepareStatement(sql);
	  pstmt.setString(1, user_id);
	  rs = pstmt.executeQuery();
	  rs.next(); // 검색된 레코드 위치로 커서 이동 
      %>
         <table border="1" align="center" width="300"> 
            <tr>
                <th colspan="2"> 
                   <h3> <%=rs.getString("name") %>님 회원정보</h3>
                </th>
            </tr>
            <tr>
               <td> 아이디 </td>
               <td> <%=rs.getString("id") %> </td>
            </tr>
            <tr>
               <td> 이름 </td>
               <td> <%=rs.getString("name") %> </td>
            </tr>
            <tr>
               <td> 주민번호 </td>
               <td> 
                 <%=rs.getString("jumin1")%>-<%=rs.getString("jumin2")%>
               </td>     
            </tr>
            <tr>
               <td> 이메일 </td>
               <td> <%=rs.getString("email") %> </td>
            </tr>
            <tr>
               <td colspan="2" align="center"> 
                 <a href="member_list.jsp">회원목록 보기 </a>
               </td>
            </tr>
         </table>      
      <%	  
    pstmt.close(); rs.close(); con.close();			  
  }catch(Exception e){
	  e.printStackTrace();
  }
%>




