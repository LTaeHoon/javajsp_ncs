<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- digitInput.jsp(입력페이지) -> digitCalc.jsp(계산) -> digitOutput.jsp(출력) -->

<h3>사칙연산 계산 결과</h3>
덧셈 : <%=request.getAttribute("add") %>
뺄셈 : <%=request.getAttribute("sub") %>
곱셈 : <%=request.getAttribute("mul") %>
나눗셈 : <%=request.getAttribute("div") %>


<!--  포워딩한 페이지에서 key를 호출할 수 있다. -->