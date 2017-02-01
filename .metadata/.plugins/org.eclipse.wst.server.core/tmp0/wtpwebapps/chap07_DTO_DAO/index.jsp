<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 자동으로 controller 호출하기 -->
<script src="./js/jquery-3.js"> </script>

<script type="text/javascript">
   $(function(){
	   location.href="<%=request.getContextPath()%>/list.do";	   
   });
</script>
