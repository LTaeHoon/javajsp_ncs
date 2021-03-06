<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!--  cookie vs session
    	1. 사용자 정보가 사용자 컴퓨터에 저장 (쿠키)
    		-> cf) 사용자 정보가 서버에 저장 (세션)
    	2. 1개 객체에 1개 속성 저장
    		-> cf) 객체 생성 없음, 여러 속성 저장
    	3. 해당 브라우저 종료시 만료되지 않음 (쿠키 생존시간 동안 살아있음)
    		-> cf) 브라우저 종료시 자동 만료
    	4. 객체 생성
    		-> 객체 생성 없음
     -->
   
  <%
  	//형식) Cookie("이름","값");
  	Cookie cookie = new Cookie("ID","hongkildong");
  	// 쿠키 생존시간 설정
  	cookie.setMaxAge(60*10); //단위 : 초  60 = 1분
  	// 쿠키 웹 배포
  	response.addCookie(cookie);
  	out.println("<h2> 쿠키 생존시간 : "+cookie.getMaxAge()+"</h2>");
  %>
  
  <h2> 쿠키가 생성되었습니다.</h2>
  
  <form method ="post" action="viewCookie.jsp">
  	<input type="submit" value="쿠키 보기"/>
  </form>