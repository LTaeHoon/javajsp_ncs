<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//파라미터 받기
	String pageFile = request.getParameter("page");
	if(pageFile==null){
		pageFile = "gallery01"; //gallery01.jsp
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
</head>
<body>
  <!-- include 액션태그를 이용하여 템플릿 페이지 작성 -->
  <table border="1" width="800" align="center" height="400">
     <tr> <!-- 상단 페이지 -->
         <td colspan="2">
           <jsp:include page="top.jsp"/>
         </td>
     </tr>    
     <tr> <!--  본문 페이지 -->
     	<td>
     		<jsp:include page="left.jsp"/>
     	</td>
     	<td colspan="2">
     		<jsp:include page='<%=pageFile+".jsp" %>'/>	
     	</td>
     </tr>  
     <tr> <!-- 하단 페이지 -->
         <td colspan="2">     
           <jsp:include page="bottom.jsp"/>
         </td>
     </tr>
  </table> 
</body>
</html>