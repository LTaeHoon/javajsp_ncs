<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <%
   		//시스템 날짜/시간 객체 생성
   		Date date = new Date();
   		//날짜 포맷 지정 객체 생성
   		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
   		
   		//날짜 표시
   		String today = simple.format(date);
   	%>
   
   <h2> 오늘 날짜 : <%=today %></h2>