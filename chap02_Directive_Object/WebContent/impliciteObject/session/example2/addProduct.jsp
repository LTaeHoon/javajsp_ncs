<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- loginForm.jsp(1개 파라미터 전달) -> selProduct.jsp(선택) -> addProduct.jsp(장바구니)-->
    
    <%
    	request.setCharacterEncoding("UTF-8");
    	String product = request.getParameter("product");
    	// ArrayList
    	ArrayList<String> list = null; //상품저장 list
    	// 기존 선택한 모든 상품을 가져와 리스트에 저장
    	list = (ArrayList<String>)session.getAttribute("plist");
    	if(list==null){ //객체 없는 경우
    		list = new ArrayList<String>(); // 객체 생성
    		session.setAttribute("plist", list); // list 컬렉션을 다른 페이지에서 사용하기 위해 session key 생성
    	}
    	
    	// 새로 선택한 상품 추가
    	list.add(product);
    %>
    
    <script>
    	alert('<%=product%>가 추가되었습니다.');
    	history.back(); //이전페이지 이동
    </script>