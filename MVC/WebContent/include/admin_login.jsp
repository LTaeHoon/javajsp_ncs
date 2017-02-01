<%@ page contentType="text/html; charset=UTF-8"%>
<div id="left_menu">
     <% 
      // 세션 객체를 받아서 String으로 캐스팅한다. 
      String admin_id=
          (String)session.getAttribute("admin_id"); 
     %>
     <div id="aMain_Login">
     <form method="post" action="admin_logout_ok.do">
       <table id="aLogin_t">
        <tr>
         <th>
          <b><%=admin_id %>관리자님 <br>로그인을 환영합니다.
          </b>
          </th>
        </tr>
        <tr> <td> &nbsp; </td> </tr>
        <tr> 
          <th>
            <input type="submit" value="로그아웃"
                   class="admin_b"/>
          </th>         
        </tr>
       </table>
     </form>
    </div>
</div> 