<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		문) Servlet을 등록하여 처리하시오.
			조건1> web.xml에 등록
			조건2> 서블릿명 : BbsServlet.java
			조건3> 처리내용 : 게시판 정보 출력(작성자, 글제목, 글내용)
	 -->
	<form name="frm" method="post" action="../bbs">
		<table align="center" border="1">
			<tr>
				<th colspan="2"> <h2>게시판 글쓰기</h2> </th>
			</tr>
			<tr>
				<th> 작성자 </th>
				<td> <input name="name"/>
			</tr>
			<tr>
				<th> 글제목 </th>
				<td> <input name="title"/>
			</tr>		
			<tr>
				<th> 글내용 </th>
				<td> <textarea rows="7" cols="50" name="content"/></textarea></td>
			</tr>		
			<tr>
				<th colspan="2">
					<input type="submit" value="글쓰기"/>
					<input type="reset" value="취소"/>
				</th>
			</tr>	
		</table>
	</form>
</body>
</html>