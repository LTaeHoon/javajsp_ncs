<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<div class="clear"></div>

 <div id="article">
  <%@ include file="../include/login.jsp" %>
  
 <div id="article_c">
 	<!-- 본문 내용 작성 : EL로 키 출력(name,age) -->
 	<h2> 데이터 저장 폼</h2>
	<form action="<%=request.getContextPath() %>/write.do" method="post">
		이름 : <input name="name" value="${name}"/>
		나이 : <input name="age" value="${age}"/>
	   <input type="submit" value="저장"/>
	</form>
 </div>
 </div>
 <div class="clear"></div>
<%@ include file="../include/footer.jsp" %>
 