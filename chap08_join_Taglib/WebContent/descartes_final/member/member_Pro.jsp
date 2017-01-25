<%@page import="db.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!--  -->
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("password");
	String name = request.getParameter("name");
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try{
		DBConnection db = new DBConnection();
		con = db.con;		
		//  chap01_JspServlet에서 생성한 table 이용 
		String sql = "insert into jsp_member values(?,?,?)";
		//
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		pstmt.setString(3, name);
		
		int re = pstmt.executeUpdate();
		if(re==1){
			%>
			<script>
				alert("회원 가입 성공");
				location.href="../login/login_form.jsp";
			</script>
			<%
		}else{
			%>
			<script>
				alert("레코드 삽입 실패");
				history.go(-1);
			</script>
	<%
		}
		rs.close();pstmt.close();con.close();
	}catch(Exception e){
		e.printStackTrace();
	}
%>