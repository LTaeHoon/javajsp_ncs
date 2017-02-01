<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.bbs.model.*" %>
<%
   // bbs_cont.do에서 보낸 키값을 받는다.
   BbsBean bbsbean = 
      (BbsBean)request.getAttribute("bbsbean");   
   int nowpage = 
    (Integer)request.getAttribute("page");  
   System.out.println(bbsbean);
   System.out.println(nowpage);
%>    
<%@ include file="../include/header.jsp" %>
<!--  ../ 한 단계 상위 폴더로 이동, 외부 포함 파일을 읽어오는 jsp 형식  -->

<div class="clear"></div>

 <div id="article">
  <%@ include file="../include/login.jsp" %>
  
  <div id="article_c">
<!-- bbs_replay.jsp -->    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자료실 답변글</title>
<link rel="stylesheet" type="text/css" 
      href="./css/bbs.css"/>
<script src="./js/jquery.js"></script>
<script src="./js/bbs.js"></script>      
</head>
<body>
  <div id="write_wrap">
   <h2 class="write_title">자료실 답변</h2>
   <form name="f" method="post" 
     action="bbs_reply_ok.do" onsubmit="return check()">
   <!-- 히든으로 답변글에 관한 속성을 넘김 -->
   <!-- 글번호, 답변글 그룹번호,순위번호,순서번호 -->
   <input type="hidden" name="bbs_num"
          value="<%=bbsbean.getBbs_num() %>" />  
   <input type="hidden" name="bbs_re_ref"
          value="<%=bbsbean.getBbs_re_ref() %>" />
   <input type="hidden" name="bbs_re_lev"
          value="<%=bbsbean.getBbs_re_lev() %>" />
   <input type="hidden" name="bbs_re_seq"
          value="<%=bbsbean.getBbs_re_seq() %>" />
   <input type="hidden" name="page"
          value="<%= nowpage %>" />       
   <table id="write_t">
      <tr> 
         <th> 글쓴이 </th>
         <td> <input name="bbs_name" id="bbs_name"
              size="14" class="input_box"/>
         </td>     
      </tr>
      <tr> 
         <th> 비밀번호 </th>
         <td> <input type="password" name="bbs_pass" 
             id="bbs_pass" size="14" class="input_box"/>
         </td>     
      </tr>
      <tr> 
         <th> 제목 </th>
         <!-- 원글의 제목 앞에 re : 붙임 -->
         <td> <input name="bbs_subject" id="bbs_subject"
              size="30" 
              value="re:<%=bbsbean.getBbs_subject() %>"
              class="input_box"/>
         </td>     
      </tr>
      <tr>
         <th> 내용 </th>
         <td> <textarea name="bbs_content" 
               id="bbs_content" 
               rows="10" cols="40"></textarea>
         </td>      
      </tr> 
   </table>
     <div id="write_menu">
      <input type="submit" value="답변" 
         class="input_button"/>
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



