<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- fileType.jsp -->
<script type="text/javascript">
   function select() { // 선택 변경시 호출
	  // 자식창에서 선택한 파일 유형 
	  var fileType = document.frm2.fileType.value;
      // 부모창의 파일 유형에 넘김
      opener.document.frm1.fileType.value = fileType;
      window.close(); // 자식창 닫기
   }
</script>
<div align="center">
  <h3> 파일 업로드 타입 선택</h3>
  <form name="frm2">
     실습파일 유형 
     <select name="fileType" id="fileType" onchange="select()">
        <option value="">## 유형 선택 ##</option>
        <option value="강의자료">## 강의파일 ##</option>
        <option value="실습파일">## 실습파일 ##</option>
        <option value="연습파일">## 연습파일 ##</option>
     </select>
  </form>
</div>