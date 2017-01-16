<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- viewCookie.jsp : 생성된 쿠키 정보 보기 -->

<%
	Cookie cookie[] = request.getCookies(); // 현재 컴퓨터에 있는 모든 쿠키 정보를 반환하여 배열에 저장
	//특정 쿠기 확인
	if(cookie !=null){
		for(int i=0;i<cookie.length;i++){
			if(cookie[i].getName().equals("ID")){
			%>
				<h2> 쿠키값 : <%=cookie[i].getValue() %></h2>
			
			<% 
			}
		}
	}
%>	

<a href="cookieOut.jsp">쿠키 삭제</a>