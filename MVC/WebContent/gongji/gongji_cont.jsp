<%@page import="com.gongji.model.GongjiBean"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.gongji.model.*" %>

<!-- 외부 패키지 임포트 -->

<%@ include file="../include/header.jsp" %>
<!--  ../ 한 단계 상위 폴더로 이동, 외부 포함 파일을 읽어오는 jsp 형식  -->

<div class="clear"></div>

 <div id="article">
  <%@ include file="../include/login.jsp" %>
  
 <div id="article_c">
 
<%
   // 컨트롤러에서 넘긴 값을 getAttribute("키값")으로 가져온다.
   // Object 타입을 BbsBean 타입으로 다운캐스팅 해야한다.
   GongjiBean gongjibean = (GongjiBean)request.getAttribute("gongjibean");
   // 쪽번호를 가져와서 정수형으로 형변환 
   int nowpage= 
      ((Integer)request.getAttribute("page")).intValue();
   // intValue() 메소드는 정수형 숫자로 바꿔서 저장해주는 역할을 한다.
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 내용보기</title>
<link rel="stylesheet" type="text/css" href="./css/bbs.css">
</head>
<body>
  <div id="bbscont_wrap"> 
     <h2 class="bbscont_title">공지사항 내용</h2>
     <table id="bbscont_t">
        <tr>
          <th> 공지제목 </th>
          <td> <%=gongjibean.getGongji_title() %> </td>
        </tr>  
        <tr>
          <th> 공지내용 </th>
          <td> 
              <textarea rows="5" cols="30" readonly="readonly"> 
                 <%=gongjibean.getGongji_cont() %> 
               </textarea>
           </td>
        </tr>
        <tr>
          <th> 조회수 </th>
          <td> <%=gongjibean.getGongji_hit()%> </td>
        </tr>
  
     </table>
     <div id="bbscont_menu">
      <!-- 하단 버튼 추가 -->
      <input type="button" value="목록" class="input_button"
        onclick="location='gongji_list.do?&page=<%=nowpage%>'"/>
     </div>
  </div>
</body>
</html>
</div>
</div>

<div class="clear"></div>
<%@ include file="../include/footer.jsp" %>






