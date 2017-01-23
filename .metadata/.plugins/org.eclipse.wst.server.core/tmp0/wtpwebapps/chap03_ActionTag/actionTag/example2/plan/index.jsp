<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- template.jsp 파일명 -->    
<%
   String pagefile=request.getParameter("page");
   if(pagefile==null){
	   pagefile="plan01";  //pagefile이 없으면 galler01로 지정
   }   
%>

<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file="../include/header.jsp" %>

<body>
<div id="main" class="container_24">
   <table style="width: 960px; text-align:center; margin-bottom: 50px;">
       
      <tr class="test"> <!-- 2행 -> 본문 영역 -->
         <td width="25%" align="left" height="200" valign="top">   <!-- 왼쪽 부분 -->
            <jsp:include page="left.jsp"/>
         </td>
         <td colspan="2" align="justify" style="padding: 0 20px;"> <!-- 오른쪽 부분 -->
            <jsp:include page='<%=pagefile+".jsp"%>'/>
         </td>   
      </tr>   
 
   </table>
</div>   

<%@ include file="../include/footer.jsp" %>
