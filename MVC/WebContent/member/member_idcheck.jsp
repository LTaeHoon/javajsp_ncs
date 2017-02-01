<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.member.model.*" %>
<% 
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("userId");    
    // 디비 연동을 위한 객체 생성
    MemberDAO dao = new MemberDAO();    
    // 중복 아이디 체크 메소드 호출
    int re = dao.checkMemberId(id);
    // re=1이면 중복, -1이면 사용가능한 아이디    
    // ajax로 값이 넘어감(출력문의 기능이 아님)
    // member.js    
    out.println(re);
%>
