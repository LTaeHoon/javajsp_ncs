<%@ page contentType="text/html; charset=UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="pro" class="pro.ProductBean"/>
<jsp:setProperty property="*" name="pro"/>
<%
 
  if(pro.check() == true){
	%>
    <table border="1" align="center" width="400">     	  
   	 <tr>		
   	    <th> 사 번 </th>
   	    <td align="center"> <%=pro.getSabun() %> </td>
   	 </tr>
   	 <tr>   
   	    <th> 이 름 </th>
   	    <td align="center"> <%=pro.getSaname() %> </td>
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
 <%  	
	}else{
		out.println("<script>");
		out.println("alert('일치하는 정보가 없습니다.')");
		out.println("location.href='ProductInput.jsp'");
		out.println("</script>");		
	}
  %> 