<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="./js/jquery-3.js"></script>
<!-- 자동으로 member1의 전체 테이블 목록 보기 -->
<script type="text/javascript">
	$(function(){
		location.href="<%=request.getContextPath()%>/select.do";
	});

</script>
