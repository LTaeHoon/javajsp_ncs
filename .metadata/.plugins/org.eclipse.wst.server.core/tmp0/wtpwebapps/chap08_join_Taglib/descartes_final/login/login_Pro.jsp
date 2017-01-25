<%@page import="db.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<script src="../js/jquery-3.js"></script>
<script>
	function login(){
		window.close(); // 현재창 닫기
		opener.location.replace("login_main.jsp");
		// 부모창으로 login/login.jsp로 교체
	}	
</script>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try{
		DBConnection db = new DBConnection();
		con = db.con;
		// chap01에서 생성한 table
		String sql = "select * from jsp_member where id=?";
		//
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if(rs.next()){
			String db_pwd = rs.getString("pwd");
			if(db_pwd.equals(pwd)){
				session.setAttribute("ID", id);
				%>				
				<script>
				     login(); // 함수 호출
				</script>
				<%
			}else{
				%>
				<script>
					alert('비밀번호가 틀립니다');
					history.go(-1);
				</script>
				<%
			}
		}else{
			%>
			<script>
				alert('아이디가없습니다');
				history.go(-1);
			</script>
			<%
		}
		rs.close();pstmt.close();con.close();
	}catch(Exception e){
		e.printStackTrace();
	}
%>