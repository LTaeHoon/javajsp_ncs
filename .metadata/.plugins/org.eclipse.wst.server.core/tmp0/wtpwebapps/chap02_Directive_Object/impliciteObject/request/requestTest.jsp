<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- 내장객체
    	- 객체 생성 없이 바로 사용할 수 있는 jsp 객체를 의미
    	- 종류 : request(요청), response(응답), application(응용), out(출력),
    			session(사용자 구분)
     -->
     
     <h2> 수강신청 과목 </h2>
     <form name="frm" method="post" action="requestPro.jsp">
     
    	학번 : <input type="text" name="num"/><br>
    	이름 : <input name="name"/>
    	<br>
    	학년 :
    		<input type="radio" name="grade" value="1"> 1학년
    		<input type="radio" name="grade" value="2"> 2학년
    		<input type="radio" name="grade" value="3"> 3학년
    		<input type="radio" name="grade" value="4"> 4학년
  		<br>
  		수강과목 : 
  			<select name="subject">
  				<option value="java">자바</option>
  				<option value="jsp">제이에스피</option>
  				<option value="spring">스프링</option>
  			</select>   
		<br>
		<input type="submit" value="신청"/>
		
     </form>