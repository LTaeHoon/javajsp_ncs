<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 저장된 속성 제거
	application.removeAttribute("msg");
%>
<script>
	// 이전페이지로 돌아가기
	history.go(-1);
</script>