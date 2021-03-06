<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
 td{text-align:center}
</style>
<h2> 회원 테이블 조회 페이지 </h2>
<%
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@127.0.0.1:1521:ORCL";
	String uid="scott";
	String upwd="tiger";

	// 3. 필요한 변수 선언  
	Connection con = null; // 1. 오라클 DB 연동 객체 변수 선언 
	PreparedStatement pstmt = null; 	// 2. 쿼리문 실행 변수 선언
	ResultSet rs = null; 	// 3. 조회 결과를 저장하는 변수 선언 
	String sql = null; 	// 4. 쿼리문 저장 변수 선언 
	int cnt=0;
	try {
		//4. 드라이버 로딩
		Class.forName(driver);
		//5. 데이터베이스 연결
		con=DriverManager.getConnection(url,uid,upwd);	
		//6. 쿼리문 작성
		sql = "select count(*) as \"cnt\" from jsp_member";
		pstmt=con.prepareStatement(sql);
		rs = pstmt.executeQuery(); // select 문 실행
		if(rs.next()){
			cnt = rs.getInt("cnt");
		}
		%>
		<h2>전체 레코드 수 : <%=cnt %></h2> 
		<table align="center" width="300" border="1">
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
			</tr>
		<%
		sql = "select * from jsp_member";
		pstmt = con.prepareStatement(sql);
		rs=pstmt.executeQuery();
		if(cnt >0){
		while(rs.next()){ //true(회원 존재), false(회원 없음)
				String db_pwd =rs.getString("pwd");  //비번 컬럼
				String db_id = rs.getString("id");  //아이디 컬럼
				String db_name = rs.getString("name"); //이름 컬럼
				cnt++;
			%>
			<tr>
				<td><%=db_id %></td>
				<td><%=db_pwd %></td>
				<td><%=db_name %></td>
			</tr>
			<% 	
			}
		}else{
			%>
			<tr>
				<td colspan='3'><h2>등록된 회원이 없습니다.</h2></td>
			</tr>
		<%
		}
		%> 	
		</table>
	<% 
		} catch (ClassNotFoundException e) {
			System.out.println("JDBC DRIVER 로딩 실패");
			e.printStackTrace();
		}finally{
			rs.close();pstmt.close();con.close(); // 연결 객체 닫기
		}
%>


