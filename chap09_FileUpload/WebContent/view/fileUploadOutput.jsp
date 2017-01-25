<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
   
   <table border="1" align="center" width="500">
     <tr>
        <th colspan="3"> <h3> 파일 업로드 목록</h3>
     </tr>
     <tr>
        <th> 작성자</th><th>파일유형</th><th>파일명</th>
     </tr>
     <% request.setCharacterEncoding("UTF-8");%>
        <c:if test="${!empty list}"> <!-- 키가 있는 경우 -->
           <c:forEach var="i" items="${list}"> <!--원소만큼 반복-->
            <tr>
              <!-- 원소에서 컬럼 추출 -->
              <td align="center">${i['writer']} </td>
              <td align="center">${i['filetype']} </td>
              <td align="center">${i['filename']} </td>      
            </tr>         
           </c:forEach>
        </c:if>
        <c:if test="${empty list}">
            <tr>
        	  <td colspan="3" align="center">
        	      <h3> 검색 목록이 없습니다.</h3>
        	  </td>
        	</tr>
        </c:if>
     <tr>
       <th colspan="3">
         <a href="./view/fileUploadForm.jsp">[파일 업로드]</a>         
       </th>     
     </tr>
   </table>