<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- InsertForm.jsp(3개:id,passwd,name) -> InsertPro.jsp:DB 저장-->

<%
  request.setCharacterEncoding("utf-8");
  String id = request.getParameter("id");
  String passwd = request.getParameter("passwd");
  String name = request.getParameter("name");
  
  // db 연동
    Connection con = null; 
    PreparedStatement pstmt = null;
    String sql = null;
  try{
	  String url = "jdbc:oracle:thin:@127.0.0.1:1521:orcl";
	  String uid = "scott";
	  String pwd = "tiger";
	  String driver = "oracle.jdbc.driver.OracleDriver";
	  
	  // 1단계 : 드라이버 로딩
	  Class.forName(driver);
	  // 2단계 : DB 연동(3개 파라미터 사용)
	  con = DriverManager.getConnection(url, uid, pwd);
	  // 3단계 : sql 작성
	  sql = "insert into member1 values(?,?,?,sysdate)";
	  pstmt = con.prepareStatement(sql);
	  // 4단계 : ?에 값을 배정
      pstmt.setString(1, id);
      pstmt.setString(2, passwd);
      pstmt.setString(3, name);
      int re = pstmt.executeUpdate(); 
      // insert, update, delete문 실행 -> 레코드 수가 리턴 
      if(re >= 1){
    	  out.println("레코드 삽입 성공!!");
    	  %>
    	  	<br>
    	     <!-- 
    	     <a href="SelectTest.jsp">[테이블 목록 보기]</a> -->
    	     <a href="SelectTest.jsp?id=<%=id%>&name=<%=name%>">목록</a>
    	  <%
      }else{
    	  out.println("레코드 삽입 실패!!");
      }
      // open 객체 닫기   
      pstmt.close(); con.close();   
  }catch(Exception e){
	  e.printStackTrace();
	  out.println("DB 연결에 실패하였습니다.");
  }
%>

