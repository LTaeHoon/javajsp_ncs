<%@ page contentType="text/html; charset=UTF-8" %>
<!-- member_logout.jsp : [로그아웃]버튼 클릭 시 -->

<%
   // 현재 로그인된 사용자의 세션정보를 만료시킴
   session.invalidate(); // 모든 세션 속성 만료시킴
%>
  <script>
     alert('로그아웃 되었습니다');
     location="main.do";
     // 자바스크립에서 location객체를 이용하여 주소 이동
  </script>
  
  
    

