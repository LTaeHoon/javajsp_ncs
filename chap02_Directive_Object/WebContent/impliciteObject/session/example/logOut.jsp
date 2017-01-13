<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	session.invalidate(); //모든 session키 만료(id,name)
    %>
    
    <h3> 로그아웃 되었습니다.</h3>
    <a href="loginForm.jsp"> 로그인 </a>
    