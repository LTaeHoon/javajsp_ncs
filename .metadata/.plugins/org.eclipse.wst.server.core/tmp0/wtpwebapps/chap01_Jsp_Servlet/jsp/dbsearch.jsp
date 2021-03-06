<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- dbsearch.jsp -->
<h2> db 테이블 조회 페이지 </h2>

<%
   // 1. id/pwd 변수 받기 
   String id = request.getParameter("id");
   String pwd = request.getParameter("pwd");

   // 2. db 연동 - con
   String driver="oracle.jdbc.driver.OracleDriver";
   String url="jdbc:oracle:thin:@127.0.0.1:1521:ORCL";
   String uid="scott";
   String upwd="tiger";
   
	// 3. 필요한 변수 선언  
	Connection con = null; // 1. 오라클 DB 연동 객체 변수 선언 
	PreparedStatement pstmt = null; 	// 2. 쿼리문 실행 변수 선언
	ResultSet rs = null; 	// 3. 조회 결과를 저장하는 변수 선언 
	String sql = null; 	// 4. 쿼리문 저장 변수 선언 
	
	try {
		//4. 드라이버 로딩
		Class.forName(driver);
		//5. 데이터베이스 연결
		con=DriverManager.getConnection(url,uid,upwd);	
		//6. 쿼리문 작성
		sql = "select * from jsp_member where id=?";
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery(); // select 문 실행
		if(rs.next()){ //true(id 존재), false(id 없음)
			String db_pwd =rs.getString("pwd");  //비번 컬럼
			String db_id = rs.getString("id");  //아이디 컬럼
			if(pwd.equals(db_pwd)){
				out.println("<script>");
				out.println("alert('로그인 성공')"); 
				out.println("</script>");
				String db_name = rs.getString("name");
				%>
				<!-- html 영역 : id, pwd, name 출력-->
				
				<table align = "center" width="300" border="1">
					<tr>
						<th colspan = "2">
						 <h2> 로그인 성공 페이지</h2>
						</th>
					</tr>
					<tr>
						<th>아이디 </th>
						<td><%=db_id %>
					</tr>
					<tr>
						<th>비밀번호 </th>
						<td><%=db_pwd %>
					</tr>
					<tr>
						<th>이름</th>
						<td><%=db_id %>
					</tr>
				</table>
	
				<%
			}else{ //비번 불일치
				out.println("<script>");
				out.println("alert('로그인 실패(비번 불일치)')");
				out.println("location.href='dataSend.html'");
				out.println("</script>");
			}
		}else{ //아이디 불일치
			out.println("<script>");
			out.println("alert('로그인 실패(아이디 불일치)')");
			out.println("location.href='dataSend.html'");
			out.println("</script>");
		}
		System.out.println("JDBC DRIVER 로딩 성공");
	} catch (ClassNotFoundException e) {
		System.out.println("JDBC DRIVER 로딩 실패");
		e.printStackTrace();
	}finally{
		con.close(); // 연결 객체 닫기
	}
	
	
%>






