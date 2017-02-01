<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.board.model.*" %>
<%@ page import="java.util.*" %>
<!-- 외부 패키지 임포트 -->

<%@ include file="../include/header.jsp" %>
<!--  ../ 한 단계 상위 폴더로 이동, 외부 포함 파일을 읽어오는 jsp 형식  -->

<div class="clear"></div>

 <div id="article">
  <%@ include file="../include/login.jsp" %>
  
 <div id="article_c">
 <%
 	// getAttribute()메소드로 board 키 값을 받는다.
 	// 리턴 타입이 Object 형이기 때문에 BoardBean 타입으로 다운캐스팅한다.
 	BoardBean board = (BoardBean)request.getAttribute("bean");
 %>
 <h2 class="boardcont_title">게시물 내용보기 </h2>
 <table id="boardcont_t">
    <tr>
       <th> 작성자 </th>
       <td> <%=board.getBoard_name() %></td>
    </tr>
    <tr>
       <th> 조회수 </th>
       <td> <%=board.getBoard_hit()%></td>
    </tr>
    <tr>
       <th> 제목 </th>
       <td><%=board.getBoard_title() %> </td>    
    </tr>
    <tr>
       <th> 글내용 </th>
       <td> <%=board.getBoard_cont() %> 
    </tr>    
 </table>
	<div id="boardcont_menu">
		<input type="button" value="수정" class="input_b" 
			onclick="location='board_edit.do?no=<%=board.getBoard_no()%>'" />
		<input type="button" value="삭제" class="input_b" 
			onclick="location='board_del.do?no=<%=board.getBoard_no()%>'" />
		<input type="button" value="목록" class="input_b"
			onclick="location='board_list.do'"/>
	</div> 
 </div>
</div>
<div class="clear"></div>
<%@ include file="../include/footer.jsp" %>




