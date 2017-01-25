<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파일 업로드 화면</title>
<script type="text/javascript">
	function typeOpen(){ //파일유형 선택
		 window.open("fileType.jsp","파일 유형 선택",
	     "width=300px, height=150px");
	}
</script>
</head>
<body>
	<div align="center">
		<form name="frm1" action="fileUploadOut.jsp" method="post"
		      enctype="multipart/form-data">
		    작성자 : <input name="writer"/> <br>
		    파일유형 : <input name="fileType" id="fileType" readonly="readonly" onclick="typeOpen()"/><br>
		    파일첨부 : <input type="file" name="fileName"/><br>
		    <input type="submit"  value="업로드"/>
		    <input type="reset"  value="취소"/>
		</form>
	</div>
</body>
</html>