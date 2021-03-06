<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- exam/product.jsp -->

<!-- productInfo 키 없는 경우 : 제품명 입력 -->
<c:if test="${empty productInfo }">
	<h3> 제품명 </h3>
	<form action="<%=request.getContextPath()%>/product.do" method="post">
		제품명 : <input name = "name"/>
		<input type="submit" value="검색"/>
	</form>
</c:if>

<!--  productInfo 키 있는 경우 : 제품 정보 출력 -->
<c:if test="${!empty productInfo }">
	<h3> 검색된 제품 정보</h3>
	제품정보 : ${productInfo}
</c:if>



