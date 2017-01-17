<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!--  액션태그(Action Tag)
    	- page 흐름을 제어하는 태그(tag) 형식으로 제공되는 jsp 문법
    	- 주요 액션태그
    	1) include : 특정 페이지 포함
    	2) forward : 특정 페이지 이동
    	3) useBean : jsp에서 java bean 객체 생성(chap04에서 다룰 예정)
    -->
    
 <h2> include 액션태그 </h2>
 	
 	<form method="post" action="includeResult.jsp">
 		이름 : <input name = "name"/>
 		이동 페이지 : <input name ="pageName"
 						  value = "includePage.jsp" readonly="readonly" />
 		<input type="submit" value="실행"/>
 	
 	</form>
 	
 	