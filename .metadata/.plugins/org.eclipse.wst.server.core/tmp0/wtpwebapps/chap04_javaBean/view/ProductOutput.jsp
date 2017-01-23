<%@page import="model.ProductBean"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); 
	ProductBean pro = (ProductBean)request.getAttribute("pro");
	//이전 페이지 ProductController에서 pro 객체 키값을 받는다. request.getAttribute로 받아오는 키값은 이 페이지 까지만 사용가능
%>
	<!--  request.getContextPath() : 현재 프로젝트의 경로 값을 가져온다 (chap04_javaBean) -->
   <form method="post" action="<%=request.getContextPath()%>/view/logOut.jsp">
    <table border="1" align="center" width="500">     	  
   	 <tr>		
   	    <th>&nbsp;사번 : <input name="sabun" size="8" 
   	         value='<%=session.getAttribute("sabun")%>'/>
   	    <br>
   	    이름 : <input name="name" size="8" 
   	          value='<%=session.getAttribute("saname")%>'/>
   	    </th>
   	    <td align="center">
   	       <input type="submit" value="로그아웃" id="btn">
   	    </td>
   	    <td rowspan="4">
 		  <img src="./view/img/<%=pro.getImage()%>" width="240" height="280">		
		</td>   	    
   	 </tr> 
   	 
	 <tr>
		<th>제품코드 </th>		
		<td align="center"> <%=pro.getProcode() %> </td>		
	 </tr>
	 <tr>
		<th> 제품명 </th>
		<td align="center"> <%= pro.getProname() %> </td>
	 </tr>
	 <tr>
		<th> 가 격 </th>
		<td align="center"> <%=pro.getPrice() %></td>
	 </tr>	
    </table>
   </form> 
