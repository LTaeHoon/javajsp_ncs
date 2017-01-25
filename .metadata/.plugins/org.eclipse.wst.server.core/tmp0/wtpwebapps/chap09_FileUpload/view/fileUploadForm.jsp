<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파일 업로드 폼</title>
 <script type="text/javascript">
    function typeOpen() {
	   /* 파업창 */
	   window.open("fileType.jsp", "파일유형", 
			   "width=350, height=120");
	}
 </script>
</head>
<body>
   <div align="center"> 
     <form name="frm1" method = "post" 
           action="<%=request.getContextPath() %>/upload.do"
           enctype="multipart/form-data">
       <!--enctype : 2진파일 업로드-->
       <table border="1">
        <tr>
           <th> 작성자</th>
           <td> <input name="writer" size="14"/>
        </tr>  
        <tr>
           <th> 파일유형</th>
           <td> <input name="fileType" size="14"
                readonly onclick="typeOpen()"/>
           </td>     
        </tr>
        <tr>
           <th> 파일첨부</th>
           <td> <input type="file" name="fileName" 
                 size="20"/>
        </tr> 
        <tr>
           <td align="center" colspan="2">
              <input type="submit" value="업로드"/>
           </td>
        </tr>
       </table>     
     </form>   
   </div>
</body>
</html>