<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  cookieOut.jsp : 쿠키 삭제 페이지 -->
<%
	Cookie cookie[] = request.getCookies(); // 현재 컴퓨터에 있는 모든 쿠키 정보를 반환하여 배열에 저장
	//특정 쿠기 확인
	if(cookie !=null){
		for(int i=0;i<cookie.length;i++){
			if(cookie[i].getName().equals("ID")){
				cookie[i].setMaxAge(0); //쿠키 삭제
				response.addCookie(cookie[i]); // 쿠키 등록
				out.println("쿠키 삭제됨"+"<br>");
				out.println("생존시간:"+cookie[i].getMaxAge());
			}
		}
	}
%>	