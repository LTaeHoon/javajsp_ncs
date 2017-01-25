<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- [c:import] 태그
    1. 외부자원을 가져오는 태그
    2. 형식)  [c:import url="url주소" var="변수명"]
    - url 속성 : 가져올 외부자원의 url 주소
    - var 속성 : url 속성에서 읽어온 자료를 저장하는 변수
 -->
 <c:import 
 url="http://localhost:8282/chap07_DTO_DAO/board/boardList.jsp"
 var ="data"/>
 ${data}   <!-- EL를 사용하여 결과 출력 -->