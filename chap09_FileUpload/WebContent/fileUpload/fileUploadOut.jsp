<%@page import="java.util.Calendar"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--fileUploadForm.jsp(writer,fileType,fileName)->fileUploadOut.jsp -->

<%
	request.setCharacterEncoding("UTF-8");
	//파일 업로드 위치
	String saveFolder="C:\\NCS\\jsp\\workspace(jsp)\\chap09_FileUpload\\WebContent\\upload";
	//허용 용량 지정
	int fileSize=5*1024*1024; //최대 파일크기 : 5MB
	//이진파일 업로드 객체 생성
	MultipartRequest multi=new MultipartRequest(request,saveFolder,fileSize,"utf-8");
	
	String writer = multi.getParameter("writer");
	String fileType = multi.getParameter("fileType");
	File upload = multi.getFile("fileName"); //file 객체 반환
	
	if(upload!=null){
		Calendar c= Calendar.getInstance(); //객체받기
		int year = c.get(Calendar.YEAR);
		int month = c.get(Calendar.MONTH)+1;
		int day = c.get(Calendar.DATE);
		// 폴더 생성 : upload/2017-1-25
		String homedir = saveFolder+"/"+year+"-"+month+"-"+day;
		File path = new File(homedir);
		if(!path.exists()){ // 기존에 폴더가 없으면
			path.mkdirs();	//폴더 생성
		}
		// 업로드 파일명 수정 : writer_file명(홍길동_test.txt)
		String fileName = upload.getName(); //test.txt
		String reFileName = writer+"_"+fileName;
		
		// 파일 객체 갱신
		upload.renameTo(new File(homedir+"/"+reFileName));
		// 기존 : upload/text.txt -> upload/2017-1-25/홍길동_test.txt
	}
	
	
%>
<div align="center">
<table border="1" width="300">
	<tr>
		<th>작성자</th>
		<td> <%=writer %></td>
	</tr>
	<tr>
		<th> 파일유형</th>
		<td><%=fileType %></td>
	</tr>
	<tr>
		<th>업로드 파일명 </th>
		<!-- 파일 객체의 파일명은 getName()함수 이용 -->
		<td><%=upload.getName() %></td>
	</tr>
	<tr>
		<th colspan="2">
			<a href="fileUploadForm.jsp">파일 업로드</a>
		</th>
	</tr>	

</table>
</div>