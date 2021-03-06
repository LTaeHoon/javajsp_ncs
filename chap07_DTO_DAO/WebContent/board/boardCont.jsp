<%@page import="com.board.model.BoardDTO"%>
<%@page import="com.board.model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- boardList.jsp(no) -> boardCont.jsp -->

<%
	int no = Integer.parseInt(request.getParameter("no")); //게시물 번호
	BoardDAO dao = new BoardDAO(); //객체 1회 생성 
	//글 내용 반환
	BoardDTO dto = dao.board_cont(no); //레코드 반환
	/*board_cont()에서 사용한 con 객체를 닫으면 board_hit()에서 사용할 수 없다, 따라서 닫지 말아야함*/
	dao.board_hit(no); //조회수 증가
	
%>
<form name="update" action="<%=request.getContextPath()%>/update.do"
	  method="post">
	  <input type="hidden" name="board_no" value="<%=dto.getBoard_no()%>"/>
<table border="1" align=center>
	
	<%
		if(dto!=null){
			%>
			<tr>
				<th>작성자</th> 
				<td>
					<!-- 읽기 전용 -->
					<input name="board_name" value="<%=dto.getBoard_name() %>" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<th>글제목</th> 
				<td>
					<input name="board_title" value="<%=dto.getBoard_title() %>"/>
				</td>
			</tr>
			<tr>
				<th>글내용</th>
				<td><textarea rows="5" cols="40" name="board_cont"><%=dto.getBoard_cont() %></textarea></td>
			</tr>
			
			<% 
		}
	
	%>
	<tr>
		<th colspan="2">
			<a href="boardList.jsp">목록</a>
			<a href="javascript:update.submit()" >수정</a>
			<a href="boardDelete.jsp?no=<%=no%>" onclick="return confirm('삭제하시겠습니까')">삭제</a>
	</tr>
</table>
</form>