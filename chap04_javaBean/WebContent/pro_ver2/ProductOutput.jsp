<%@ page contentType="text/html; charset=UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="pro" class="pro.ProductBean"/>
<jsp:setProperty property="*" name="pro"/>
<%
  // 제품 이미지 경로 및 파일명 지정
  String image="";
  if(pro.getProname().equals("냉장고")){
	  image="refrigerator.png";		  
  }else if(pro.getProname().equals("세탁기")){
	   image="washer.png";		   
  }else if(pro.getProname().equals("HDTV")){
	   image="hdtv.png";		   
  }
  // sabun과 name을 이용하여 session 속성 생성
  session.setAttribute("sabun",pro.getSabun());
  session.setAttribute("name",pro.getSaname());  
  /*
       서블릿에서 세션 객체 생성 방법   
    HttpSession session = request.getSession();
    session.setAttribute('key', value); 
  */
%>  

<%
	if(pro.check() == true){
	%>
   <form method="post" action="logOut.jsp">
    <table border="1" align="center" width="500">     	  
   	 <tr>		
   	    <th>&nbsp;사번 : <input name="sabun" size="8" 
   	         value='<%=session.getAttribute("sabun")%>'/>
   	    <br>
   	    이름 : <input name="name" size="8" 
   	          value='<%=session.getAttribute("name")%>'/>
   	    </th>
   	    <td align="center">
   	       <input type="submit" value="로그아웃" id="btn">
   	    </td>
   	    <td rowspan="4">
 		  <img src="./img/<%=image%>" width="240" height="280">		
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
 <%  	
	}else{
		out.println("<script>");
		out.println("alert('일치하는 정보가 없습니다.')");
		out.println("location.href='ProductInput.jsp'");
		out.println("</script>");		
	}
  %> 