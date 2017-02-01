<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="../include/header.jsp" %>
<div class="clear"></div>
 <div id="article">
  <%@ include file="../include/login.jsp" %>
  <div id="article_c">
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자료실 입력폼</title>     
</head>
<body>
  <div id="write_wrap">
   <h2 class="write_title">자료실 입력폼</h2>
   <form name="f" method="post" action="bbs_write_ok.do"
         onsubmit="return check()"
         enctype="multipart/form-data">
    <!-- enctype속성은 이진파일 업로드를 위한 속성 -->
    <table id="write_t">
      <tr>
         <th>글쓴이</th>
         <td>
           <input name="bbs_name" id="bbs_name" size="14"
                  class="input_box"/>
         </td>         
      </tr>
      <tr>
         <th>비밀번호</th>
         <td>
           <input type="password" name="bbs_pass"
                  id="bbs_pass" size="14"
                  class="input_box"/>
         </td>         
      </tr>
      <tr>
         <th>제목</th>
         <td>
           <input name="bbs_subject" id="bbs_subject" 
                  size="30" class="input_box"/>
         </td>         
      </tr>
      <tr>
         <th>내용</th>
         <td>
           <textarea name="bbs_content" 
                id="bbs_content" rows="10" cols="40">
           </textarea>          
         </td>         
      </tr>
      <tr>
         <th>파일첨부</th>
         <td>
           <input type="file" name="bbs_file"/>
         </td>         
      </tr>    
    </table>
    <div id="write_menu">
      <input type="submit" value="등록" 
             class="input_button"/>
      <input type="reset" value="취소"
             onclick="$('#bbs_name').focus();"
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




