<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ifExam.jsp -->
<style>
 td{text-align: center;}
</style>

<%! //class 멤버 선언
	int size; //게시물 수
	String writer; //게시자
	
	public void input(){ //size, writer 초기화
		size = Integer.parseInt(
		JOptionPane.showInputDialog("게시물 수 입력"));
		writer= JOptionPane.showInputDialog("작성자 입력");
	}
%>

<% input();%>

<table border="1" width="250">
	<tr>
		<th colspan="2"><h2>게시물 목록</h2></th>
	</tr>
	<tr>
		<th> 글번호 </th>
		<th> 작성자 </th>
	</tr>
	<% 
		if(size>0){ //게시물 있는 경우
			for(int i=1;i<=size;i++){
				%>
					<!-- html영역 -->
					<tr>
						<td><%=i%></td>
						<td><%=writer%></td>
					</tr>
				<% 	
			}
		}else{ //게시물 없는 경우
			%>
				<tr>
					<th colspan="2"><h2>게시물이 없습니다.</h2></th>
				</tr>
			
			<% 
		}
	%>
	
</table>

<h2>전체 게시물 수 : <font color='blue'><%=size %></font></h2>