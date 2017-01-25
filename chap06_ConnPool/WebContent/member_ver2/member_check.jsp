<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("userId");
	MemberDAO dao = new MemberDAO();
	int re = dao.idCheck(id);
	out.println(re);
%>