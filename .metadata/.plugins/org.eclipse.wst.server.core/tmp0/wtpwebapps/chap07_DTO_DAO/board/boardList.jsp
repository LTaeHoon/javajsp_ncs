<%@page import="com.board.model.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.board.model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- boardList.jsp : 게시물 전체 목록 보기 -->
<style>
	table,td,th{border-collapse:collapse;}
	table{border:1px solid black;width:500;margin:auto;text-align:center;}
	td,th{border:1px solid black;}
</style>

<table>
	<tr>
		<th>글번호</th> <th>작성자</th>
		<th>글제목</th> <th>등록날짜</th>
		<th>조회수</th>
	</tr>
	<% 
		BoardDAO dao = new BoardDAO(); //db 연동 객체 생성
		List<BoardDTO> list = dao.getBoardList();
		
		if(list.size()>0){
			for(int i=0;i<list.size();i++){ //레코드 수반복
				BoardDTO dto =list.get(i); //BoardDTO
				%>
				<tr>
					<td><%=dto.getBoard_no() %></td>
					<td><%=dto.getBoard_name() %></td>
					<!-- 글제목에 링크 걸기 : 클릭하면 현재 게시물 번호 넘김
						boardCont.jsp -->
					<td>
						<a href="boardCont.jsp?no=<%=dto.getBoard_no() %>">
						<%=dto.getBoard_title() %></a>
					</td>
					<td><%=dto.getBoard_regdate().substring(0,10) %></td>
					<td><%=dto.getBoard_hit() %></td>
				</tr>
				
				<%
			}
		}else{
			%>
				<tr>
					<th colspan="5">
						<h2>게시물 목록 없음</h2>
					</th>
				</tr>
			<% 
		}
		
	%>
	<tr>
		<td colspan="5"><a href="boardWrite.jsp">게시물 쓰러가기</a></td>
	<tr>
</table>
