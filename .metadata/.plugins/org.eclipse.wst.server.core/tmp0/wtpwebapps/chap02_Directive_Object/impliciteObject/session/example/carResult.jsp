<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String car[] = request.getParameterValues("car");
	String id = (String)session.getAttribute("id");
	String name= (String)session.getAttribute("name");
	String carex[]={"제너시스-3.0","소나타-3.0","그랜저-3.0","i30-3.0"};
%>
<style>
td{text-align:center}
table{background-color:yellow}
</style>
<table border="1" align="center">
	<tr>
		<th colspan="2"><h3><%=name %>님의 장바구니 내역</h3></th>
	</tr>			
	<tr>
		<td>선택상품</td>
		<td>상품설명</td>
	</tr>
	<%
	try{
	for(int i=0;i<car.length;i++){
		%>
	<tr>
		<td><img src="<%=car[i]%>"></img></td>
		<td><%=carex[i]%><td>
	</tr>
		<% 
	}
	}catch(Exception e){
		 out.println("<script>");
		 out.println("alert('선택 상품이 없습니다.')");
		 out.println("location.href='carProduct.jsp'"); // 새로고침 + 직전 페이지 이동
		 out.println("</script>");
	}
	%>
	
</table>