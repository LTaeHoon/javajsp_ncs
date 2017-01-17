<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 장바구니 목록 확인 / 계산
	사과 : 1500원
	배   : 2000원
	체리 : 1000원
	바나나 : 1000원
	복숭아 : 1500원
	총 구매금액 : 7000원

 -->


<div align = "center">
	<h2> 장바구니 목록/계산 </h2>
	<%
		// 상품 단가표
		int []price ={1500,2000,1000,1000,1500};
		int total = 0;
		//세션 키(전체 상품목록) 획득
		ArrayList<String> list = (ArrayList<String>)session.getAttribute("plist");
		
		if(list != null){ //상품이 있는 경우
			for(String p : list){ //개선된 for문
				switch(p){
					case "사과":
						out.println(p+":"+price[0]+"원"+"<br>");
						total += price[0];
						break;
					case "배":
						out.println(p+":"+price[1]+"원"+"<br>");
						total += price[1];
						break;
					case "체리":
						out.println(p+":"+price[2]+"원"+"<br>");
						total += price[2];
						break;
					case "바나나":
						out.println(p+":"+price[3]+"원"+"<br>");
						total += price[3];
						break;
					case "복숭아":
						out.println(p+":"+price[4]+"원"+"<br>");
						total += price[4];
						break;
				}
				
			}
			out.println("<h3>총 구매금액 :"+total+"원</h3>");
			// 총구매금액 출력
		}else{
			%>
				<h3> 선택한 상품이 없습니다.</h3>
			<% 
		}
		
	%>

</div>