<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<!--  ../ 한 단계 상위 폴더로 이동, 외부 포함 파일을 읽어오는 jsp 형식  -->

<div class="clear"></div>

 <div id="article">
  <%@ include file="../include/login.jsp" %>
  
 <div id="article_c">
 	<!-- 본문 내용 작성 -->
 	<br><br><br>
 	<h2> 데이터 입력 폼 </h2>
	<form action="<%=request.getContextPath() %>/form.do" method="post">
		이름 : <input name="name"/>
		나이 : <input name="age"/>
	   <input type="submit" value="전송"/>
	</form>
 </div>
 </div>
 <div class="clear"></div>
<%@ include file="../include/footer.jsp" %>
 