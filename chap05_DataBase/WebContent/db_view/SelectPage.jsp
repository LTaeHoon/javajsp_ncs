<%@page import="model.CRUD_DTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <!-- SelectPage.jsp : 서블릿에서 보낸 list 키 받기 -->
 
 <%
 	List<CRUD_DTO> list = (List<CRUD_DTO>)request.getAttribute("list");	
 	response.setContentType("text/html;charset=UTF-8");
 %>
 	<div align="center">
 		<h2> member1 전체 테이블 목록 </h2>
 		<table border="1">
 			<tr> <!-- 제목 행 출력 -->
 				<th> id </th>
 				<th> pwd </th>
 				<th> name </th>
 				<th> date </th>
			</tr>
			<%
				if(list!=null){ //레코드가 있는 경우
					for(int i=0;i<list.size();i++){ //레코드 수 반복
						CRUD_DTO dto = list.get(i); //레코드 받기
						%>
						<tr>
							<td><%=dto.getId()%></td>
							<td><%=dto.getPasswd() %></td>
							<td><%=dto.getName() %></td>
							<td><%=dto.getReg_date() %></td>
						</tr>
						<% 
					}
				}else{
					%>
					<tr>
						<th colspan="4">
							<h3> 목록이 없습니다.</h3>
						</th>
					</tr>
					<% 
				}
				
			
			%>
 			<tr>
 				<th colspan="4"><!-- 서블릿에 의해서 만들어진 view 페이지는 서블릿의 기준으로 경로 설정!! -->
	 				<a href="<%=request.getContextPath()%>/db_view/InsertForm.jsp">[레코드 삽입]</a>
	 				<a href="<%=request.getContextPath()%>/db_view/UpdateForm.jsp">[레코드 수정]</a>
	 				<a href="<%=request.getContextPath()%>/db_view/DeleteForm.jsp">[레코드 삭제]</a>
	 			</th>
 			</tr>
 		
 		</table>
 	</div>