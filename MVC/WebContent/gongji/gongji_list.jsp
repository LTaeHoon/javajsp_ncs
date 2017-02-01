<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.gongji.model.*" %>
<!-- 외부 패키지 임포트 -->

<%@ include file="../include/header.jsp" %>
<!--  ../ 한 단계 상위 폴더로 이동, 외부 포함 파일을 읽어오는 jsp 형식  -->

<div class="clear"></div>

 <div id="article">
  <%@ include file="../include/login.jsp" %>
  
 <div id="article_c">
<%
	List<GongjiBean> gongjiList=(List<GongjiBean>)request.getAttribute("gongjilist");
    //setAttribute()에 의해서 Object형으로 업캐스팅 되면서
    //키값에 저장된다. 반환되는 값도 다운캐스팅을 해서 저장한다.
    //다운캐스팅은 업캐스팅이 된것에 한해서 다운캐스팅이 된다.
    //레퍼런스간의 캐스팅 즉 다운(업)캐스팅은 상속이 된것에 한에서만 허용된다.
    int listcount=((Integer)request.getAttribute("listcount")).intValue();
	int nowpage=((Integer)request.getAttribute("page")).intValue();
	int maxpage=((Integer)request.getAttribute("maxpage")).intValue();
	int startpage=((Integer)request.getAttribute("startpage")).intValue();
	int endpage=((Integer)request.getAttribute("endpage")).intValue();
%>
<html>
<head>
	<title>MVC 공지사항</title>		
</head>

<body>
<!-- 게시판 리스트 -->
<table id="bbslist_t" align="center" width="50%" border="0" cellpadding="0" cellspacing="0">
	<tr align="center" valign="middle">
		<td colspan="4">공지사항 목록 </td>
		<td align="right" style="margin-right:10px">
			<font size=2>글 개수 : ${listcount }</font>
		</td>
	</tr>
	
	<tr align="center" valign="middle" bordercolor="#333333">
		<th>번호	</th>
		<th>제목</th>
		<th>작성자</th>
		<th>날짜</th>
		<th>조회수</th>
	</tr>
	
	<%
		for(int i=0;i<gongjiList.size();i++){
			GongjiBean gongji=gongjiList.get(i);
	%>
	<tr align="center" valign="middle" bordercolor="#333333"
		onmouseover="this.style.backgroundColor='F8F8F8'"
		onmouseout="this.style.backgroundColor=''">
		<td height="23" style="font-family:Tahoma;font-size:10pt;">
			<div align="center">
			<%=gongji.getGongji_no() %>
			</div>
		</td>
		
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center">
        		<a href="gongji_cont.do?num=<%=gongji.getGongji_no() %>&page=<%=nowpage %>&state=cont">
        		<%=gongji.getGongji_title() %></a>
			</div>
		</td>
		
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center"><%=gongji.getGongji_name() %></div>
		</td>
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center"><%=gongji.getGongji_regdate() %></div>
		</td>	
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center"><%=gongji.getGongji_hit() %></div>
		</td>
	</tr>
	<%} %>
	<tr align=center height=20>
		<td colspan=7 style=font-family:Tahoma;font-size:10pt;>
			<%if(nowpage<=1){ %>
			[이전]&nbsp;
			<%}else{ %>
			<a href="gongji_list.do?page=<%=nowpage-1 %>">[이전]</a>&nbsp;
			<%} %>
			
			<%for(int a=startpage;a<=endpage;a++){
				if(a==nowpage){%>
				[<%=a %>]
				<%}else{ %>
				<a href="gongji_list.do?page=<%=a %>">[<%=a %>]</a>&nbsp;
				<%} %>
			<%} %>
			
			<%if(nowpage>=maxpage){ %>
			[다음]
			<%}else{ %>
			<a href="gongji_list.do?page=<%=nowpage+1 %>">[다음]</a>
			<%} %>
		</td>
	</tr>
	<tr align="right">
		<td colspan="5">		
	   		<a href="bbs_write.do?page=<%=nowpage%>">[글쓰기]</a>
	   		<!-- <a href="bbs_write.do">[글쓰기]</a>  -->	   		  	
		</td>
	</tr>
</table>
</body>
</html>
</div>
</div>

<div class="clear"></div>
<%@ include file="../include/footer.jsp" %>







