<%@page import="org.omg.CORBA.DynAnyPackage.Invalid"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.bbs.model.*" %>
<%@ include file="../include/header.jsp" %>
<!--  ../ 한 단계 상위 폴더로 이동, 외부 포함 파일을 읽어오는 jsp 형식  -->

<div class="clear"></div>

 <div id="article">
  <%@ include file="../include/login.jsp" %>
  
  <div id="article_c">    
<!-- bbs_delete.jsp -->
<%
    // bbs_cont.do에서 보낸 키값을 받는다.
    BbsBean bbsbean = 
          (BbsBean)request.getAttribute("bbsbean");
    int nowpage = 
        (Integer)request.getAttribute("page");   
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자료실 삭제</title>
</head>
<body>
  <div id="bbsdel_wrap">
   <h2 class="bbsdel_title">게시물 삭제</h2>
   <form method="post" action="bbs_del_ok.do"
         onsubmit="return del_check()">
    <!-- 히든으로 데이터 전송 -->
    <input type="hidden" name="num" 
           value="<%=bbsbean.getBbs_num() %>"/>
    <input type="hidden" name="page"
           value="<%=nowpage %>" />
    <!-- 해당 레코드의 글번호와 페이지번호를 히든으로
         넘긴다. -->              
            
    <table id="bbsdel_t">
      <tr>
         <th> 삭제비밀번호</th>
         <td><input type="password" name="pwd" id="del_pwd"
               size="14" class="input_box"/>
         </td>       
      </tr>
    </table>
      <div id="bbsdel_menu">
        <input type="submit" value="삭제" 
               class="input_button"/>
         <input type="button" value="취소" 
                class="input_button"
                onclick="history.back()"/>
      </div>
   </form>
  </div>
</body>
</html>
</div>
</div>

<div class="clear"></div>
<%@ include file="../include/footer.jsp" %>




