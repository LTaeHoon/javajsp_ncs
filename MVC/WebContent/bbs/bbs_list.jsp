<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.bbs.model.*" %>
<!-- 외부 패키지 임포트 -->

<%@ include file="../include/header.jsp" %>
<!--  ../ 한 단계 상위 폴더로 이동, 외부 포함 파일을 읽어오는 jsp 형식  -->

<div class="clear"></div>

 <div id="article">
  <%@ include file="../include/login.jsp" %>
  
 <div id="article_c">
<%
	List<BbsBean> boardList=(List<BbsBean>)request.getAttribute("bbslist");
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
	<title>MVC 자료실</title>		
</head>

<body>
<!-- 게시판 리스트 -->
<table id="bbslist_t" align="center" width="50%" border="0" cellpadding="0" cellspacing="0">
	<tr align="center" valign="middle">
		<td colspan="4"><img src="./images/mvc_bbs.png" width="260"> </td>
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
		for(int i=0;i<boardList.size();i++){
			BbsBean bl=boardList.get(i);
	%>
	<tr align="center" valign="middle" bordercolor="#333333"
		onmouseover="this.style.backgroundColor='F8F8F8'"
		onmouseout="this.style.backgroundColor=''">
		<td height="23" style="font-family:Tahoma;font-size:10pt;">
			 <%if(bl.getBbs_re_lev() == 0){
			 //답변글이 아닐때는 글그룹번호가 출력%>
            <%=bl.getBbs_re_ref()%>
            <%}else{
            //답변글일때는 글그룹번호를 뺀다.%>
            &nbsp;
           <%}%>
		</td>
		
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center">
			<%if(bl.getBbs_re_lev()!=0){
				//답변글 일때 답변글 순서만큼 레벨값 번호가
				//1씩증가한다. 즉 아래 답변글일수록 
				//들여쓰기한다.
   			for(int a=1;a<=bl.getBbs_re_lev();a++){ %>
	       &nbsp;
           <%} %>
           <img src="./images/AnswerLine.gif">
           <%} %>
        <a href="bbs_cont.do?num=<%=bl.getBbs_num()%>&page=<%=nowpage%>&state=cont">
        <%=bl.getBbs_subject()%></a>
			</div>
		</td>
		
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center"><%=bl.getBbs_name() %></div>
		</td>
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center"><%=bl.getBbs_date() %></div>
		</td>	
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center"><%=bl.getBbs_readcount() %></div>
		</td>
	</tr>
	<%} %>
	<tr align=center height=20>
		<td colspan=7 style=font-family:Tahoma;font-size:10pt;>
			<%if(nowpage<=1){ %>
			[이전]&nbsp;
			<%}else{ %>
			<a href="bbs_list.do?page=<%=nowpage-1 %>">[이전]</a>&nbsp;
			<%} %>
			
			<%for(int a=startpage;a<=endpage;a++){
				if(a==nowpage){%>
				[<%=a %>]
				<%}else{ %>
				<a href="bbs_list.do?page=<%=a %>">[<%=a %>]</a>&nbsp;
				<%} %>
			<%} %>
			
			<%if(nowpage>=maxpage){ %>
			[다음]
			<%}else{ %>
			<a href="bbs_list.do?page=<%=nowpage+1 %>">[다음]</a>
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







