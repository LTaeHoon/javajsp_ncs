<%@page import="com.board.model.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.board.model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- boardList.jsp : 등록된 전체 게시물 목록 보기-->
<%
	List<BoardDTO> boardList=(List<BoardDTO>)request.getAttribute("boardlist");
    int listcount=(Integer)request.getAttribute("listcount");
	int nowpage=(Integer)request.getAttribute("page");
	int maxpage=(Integer)request.getAttribute("maxpage");
	int startpage=(Integer)request.getAttribute("startpage");
	int endpage=(Integer)request.getAttribute("endpage");
%>
<style>
   td{text-align:center} 
</style>
<table border="1" width="500" align="center" >
	<tr>
		<td colspan="4" align="right" style="margin-right:10px">
			<h2> 게시판 목록</h2>
		</td>
		<td>
		    <font color="red">글 개수 : ${listcount }</font>
		</td>
	</tr>
	<tr>
		<th>글번호</th> <th>제목</th>
		<th>작성자</th> <th>등록날짜</th>
		<th>조회수</th>
	</tr>
	<%		
		if (boardList.size() > 0) {
			for (int i = 0; i < boardList.size(); i++) {
				BoardDTO blist = boardList.get(i);
	   %>
 
          <tr>
			<td> <%=blist.getBoard_no() %>	</td>		
			<td> <%=blist.getBoard_title() %> </td>		
			<td> <%=blist.getBoard_name() %> </td>
			<td> <%=blist.getBoard_regdate().substring(0, 10) %> </td>	
			<td> <%=blist.getBoard_hit() %>	</td>
	    </tr>
	<% } // for end %>
	<tr>
		<td colspan=5>
			<% if(nowpage <=1 ){ %>
			<!-- 1페이지 이하이면 링크 없음 -->			
			 [이전]&nbsp;
			<% }else{ %>
			<!-- 2페이지 이상이면 링크 -->
			<a href="<%=request.getContextPath()%>/list.do?page=<%=nowpage-1 %>">[이전]</a>&nbsp;
			<%} %>
			
			<% for(int i=startpage; i<=endpage; i++){
				// 현재 페이지 링크 없음 
				if(i==nowpage){%>
				[<%= i %>]
				<% }else{ %>
				<!-- 현재 페이지를 제외한 나머지 페이지 링크 : 클릭 시 이전 페이지 번호 넘김-->
				<a href="<%=request.getContextPath()%>/list.do?page=<%= i %>">[<%= i %>]</a>&nbsp;
				<%} %>
			<%} %>
			
			<% if(nowpage >= maxpage){ %>
			<!-- 현재 페이지가 마지막인 경우 링크 없음 -->			
			 [다음]&nbsp;
			<% }else{ %>
			<!-- 마지막 페이지가 아니면 링크 : 클릭 시 다음 페이지 번호 넘김-->
			<a href="<%=request.getContextPath()%>/list.do?page=<%= nowpage+1 %>">[다음]</a>
			<% } %>
		</td>
	</tr>
	<% } else{  // if end %>
		      <tr>
		         <th colspan="5">
		            <h3> 게시물 내용 없음</h3>
		         </th>
		      </tr>
     <%	 } %>
    <tr>
      <th colspan="5">
         <a href="<%=request.getContextPath()%>/board_ver2/boardWrite.jsp">[글쓰기]</a>
      </th>
    </tr>
  </table>







