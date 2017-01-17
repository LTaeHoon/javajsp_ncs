<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- digitInput.jsp(입력페이지) -> digitCalc.jsp(계산) -> digitOutput.jsp(출력) -->

<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	/* 두 수 대상 사칙연산 : 4key 생성 */
	request.setAttribute("add", num1+num2);
	request.setAttribute("sub", num1-num2);
	request.setAttribute("mul", num1*num2);
	request.setAttribute("div", num1/num2);
	
	/*digitOutput.jsp 페이지에 key전송 */
	RequestDispatcher dis = request.getRequestDispatcher("digitOutput.jsp");
	dis.forward(request, response); //실제 페이지로 포워딩
	
%>
	

	