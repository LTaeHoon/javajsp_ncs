<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.bbs.model.*" %>
<%
   BbsBean bbs=(BbsBean)request.getAttribute("bbsbean");
   int nowpage=(Integer)request.getAttribute("page");
   String file=(String)request.getAttribute("file");
   // 쪽번호를 정수형으로 형 변환한 후 nowpage에 저장한다.
%>
<!-- dao 패키지의 모든 클래스를 사용하기 위해서 임포트 시킴 -->
<%@ page import="java.util.*" %>
<!--  컬렉션 클래스를 사용하기 위해서 임포트 시킴 -->
<%@ include file="../include/header.jsp" %>
<!--  ../ 한 단계 상위 폴더로 이동, 외부 포함 파일을 읽어오는 jsp 형식  -->

<div class="clear"></div>

 <div id="article">
  <%@ include file="../include/login.jsp" %>
  
  <div id="article_c">

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자료실 수정 화면</title>
<!-- 외부 스타일스트와 제이쿼리 파일 링크 -->
<link rel="stylesheet" type="text/css" href="./css/bbs.css"/>
<script src="./js/jquery.js"></script>
<script src="./js/bbs.js"></script>
</head>
<body>
  <div id="write_wrap">
    <h2 class="write_title">자료실 수정</h2>
    <form name="f" method="post" action="bbs_edit_ok.do"
          onsubmit="return check()" enctype="multipart/form-data">   
     <input type="hidden" name="num" 
                  value="<%=bbs.getBbs_num()%>"/>
     <input type="hidden" name="page" 
                  value="<%=nowpage%>"/>
     <!-- bbs_edit_ok.do에서 처리한 변수를 히든으로 넘긴다. --> 
                                       
     <table id="write_t">
       <tr>
          <th> 글쓴이(수정) </th>
          <td> <input name="bbs_name" id="bbs_name" size="14"
               class="input_box"
               value="<%=bbs.getBbs_name() %>"/> </td>
       </tr>
       <tr>
          <th> 비밀번호 </th>
          <td> <input type="password" name="bbs_pass" 
              id="bbs_pass" size="14" class="input_box"/> </td>
       </tr>
       <tr>
         <th> 제 목(수정) </th>
         <td>  <input name="bbs_subject" id="bbs_subject" 
                size="14"  class="input_box"
                value="<%=bbs.getBbs_subject()%>"/> </td>
       </tr>
       <tr>
         <th> 내 용(수정) </th>
         <td> <textarea name="bbs_content" id="bbs_content"
              rows="10" cols="40">
              <%=bbs.getBbs_content() %></textarea>  
         </td>
       </tr>
       <tr>
         <th> 파일첨부(수정) </th>
         <td> <input type="file" name="bbs_file"/> </td>
       </tr>         
     </table>
     <div id="write_menu">
       <input type="submit" value="수정" class="input_button"/>
       <input type="button" value="취소" 
              onclick="history.back()"
              class="input_button"/>
     </div>          
   </form>
  </div>  
</body>
</html> 

  </div>
</div>

<div class="clear"></div>
<%@ include file="../include/footer.jsp" %>


