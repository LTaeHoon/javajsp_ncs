<%@page import="db.DBConnection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- UpdateForm.jsp(3개) -> UpdatePro.jsp(DB 수정)
	1. id/passwd -> 조회 (일치 여부 판정)
	2. 일치하면 -> 해당 사용자 이름 수정
		->update 테이블명 set 수정칼럼명=값 where 조건식;
	3. 일치하지 않으면 이전페이지 리턴 with 경고 메시지
 -->
 <%
 	request.setCharacterEncoding("UTF-8");
 	String id = request.getParameter("id");
 	String passwd = request.getParameter("passwd");
 	String name = request.getParameter("name");
 	
 	Connection con = null;
 	PreparedStatement pstmt = null;
 	ResultSet rs = null;
 	String sql = null;
 	
 	try{
 		DBConnection db = new DBConnection();
 		con = db.con;
 	 	sql = "select id, passwd from member1 where id=? and passwd=?";
 	 	pstmt = con.prepareStatement(sql);
 	 	pstmt.setString(1, id);
 	 	pstmt.setString(2,passwd);
 	 	rs=pstmt.executeQuery();
 	 	if(rs.next()){ //id 와 passwd 일치인 경우, 업데이트 과정 수행
 	 		sql = "update member1 set name=? where id=?";
 	 		pstmt = con.prepareStatement(sql);
 	 		pstmt.setString(1,name);
 	 		pstmt.setString(2,id);
 	 		int re = pstmt.executeUpdate();
 	 		if(re>=1){ //update 된 경우
 	 		  out.println("레코드 업데이트 성공!!");
 	 		  out.println("<script>");
 	    	  out.println("location.href='SelectTest.jsp'");
 	    	 out.println("</script>");
 	 		}else{
 	 			 out.println("레코드 업데이트 실패!!");	
 	 		}
 	 	}else{
 	 		out.println("<script>");
 	 		out.println("alert('입력한 id, pwd 값이 다릅니다.')");
 	 		out.println("history.back()");
 	 		out.println("</script>");
 	 	}
 	}catch(Exception e){
 		 e.printStackTrace();
 		  out.println("DB 연결에 실패하였습니다.");
 	}
 
 %>
