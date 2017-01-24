<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!-- db 연결 태그 사용하기 위해서 tablib 추가 -->
<sql:setDataSource var="conn"
    driver="oracle.jdbc.driver.OracleDriver"
    url="jdbc:oracle:thin:@127.0.0.1:1521:ORCL"
    user="scott"
    password="tiger"/>

<!-- sql:update : insert, update, delete문 사용 -->
<sql:update dataSource="${conn}">
   insert into student(num,name,gender,dept_code)
          values(2015004,'김유신','남','d002')
</sql:update>  
  
<!-- sql:query 태그 : select문  -->
<sql:query var="st" dataSource="${conn}">
   select * from student order by num desc
</sql:query>

<h3> 학생 테이블 전체 목록</h3>
<!-- st.rows는 레코드 수만큼 반복한다. -->
<hr>
<!-- 테이블의 필드단위로 출력 -->
<c:forEach var="data" items="${st.rows}">
 <c:out value="${data['num']}" /> <!-- num컬럼-->
 <c:out value="${data['name']}" /><!-- name컬럼-->
 <c:out value="${data['gender']}" /><!-- gender컬럼-->
 <c:out value="${data['dept_code']}" /><!-- dept_code컬럼-->
 <hr>  
</c:forEach>  

<!-- 파라미터 사용 예 -->
<h3> 파라미터 사용(조건검색)</h3>
<sql:query var="st2" dataSource="${conn}">
   select * from student where num=?
   <sql:param>2015002</sql:param>
</sql:query>
<c:forEach var="data" items="${st2.rows}">
 <c:out value="${data['num']}" /> <!-- num컬럼-->
 <c:out value="${data['name']}" /><!-- name컬럼-->
 <c:out value="${data['gender']}" /><!-- gender컬럼-->
 <c:out value="${data['dept_code']}" /><!-- dept_code컬럼-->
 <hr>  
</c:forEach>    