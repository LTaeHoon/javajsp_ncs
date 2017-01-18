<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("UTF-8");
 	String id = request.getParameter("id");
 	String passwd = request.getParameter("passwd");
 	
 	Connection con = null;
 	PreparedStatement pstmt = null;
 	ResultSet rs = null;
 	String sql = null;
 	
 	try{
 		String url = "jdbc:oracle:thin:@127.0.0.1:1521:orcl";
 	 	String uid = "scott";
 	 	String pwd = "tiger";
 	 	String driver = "oracle.jdbc.driver.OracleDriver";
 	 	Class.forName(driver);
 	 	  // 2단계 : DB 연동(3개 파라미터 사용)
 	 	con = DriverManager.getConnection(url, uid, pwd);
 	 	sql = "select id, passwd from member1 where id=? and passwd=?";
 	 	pstmt = con.prepareStatement(sql);
 	 	pstmt.setString(1, id);
 	 	pstmt.setString(2,passwd);
 	 	rs=pstmt.executeQuery();
 	 	if(rs.next()){ //id 와 passwd 일치인 경우, 업데이트 과정 수행
 	 		sql = "delete from member1 where id=?";
 	 		pstmt = con.prepareStatement(sql);
 	 		pstmt.setString(1,id);
 	 		int re = pstmt.executeUpdate();
 	 		if(re>=1){ //update 된 경우
 	 		  out.println("레코드 삭제 성공!!");
 	    	  %>
 	    	     <br>
 	    	     <a href="SelectTest.jsp">[테이블 목록 보기]</a>
 	    	  <%
 	 		}else{
 	 			 out.println("레코드 삭제 실패!!");	
 	 		}
 	 	}else{
 	 		out.println("<script>");
 	 		out.println("alert('입력한 id, pwd 값이 다릅니다.')");
 	 		out.println("location.href='DeleteForm.jsp'");
 	 		out.println("</script>");
 	 	}
 	}catch(Exception e){
 		 e.printStackTrace();
 		  out.println("DB 연결에 실패하였습니다.");
 	}
 
 %>
    