<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- loginForm.jsp(1개) -> selProduct.jsp -->
    
    <%
    	request.setCharacterEncoding("UTF-8");
    	String userName = request.getParameter("userName");
    	//세션 키 생성 : key(String), value(Object)
    	session.setAttribute("userName", userName);
    	//다운캐스팅 : 반드시 캐스팅 연산자를 적용해야 함
    	String userName2 = (String)session.getAttribute("userName");
    	
    %>
    
    <div align="center">
    	<h2>구매 상품 선택</h2>
    	<hr>
    	<%=userName2%>님 환영합니다.
    	<hr>
    	<form method="post" action="addProduct.jsp">
    		<select name="product">
    			<option> 사과 </option>
    			<option> 배 </option>
    			<option> 체리 </option>
    			<option> 바나나 </option>
    			<option> 복숭아 </option>
    		</select>
    		<input type="submit" value="장바구니 추가"/>
    	</form>	
    	<a href="calcProduct.jsp">계산</a>
    </div>	