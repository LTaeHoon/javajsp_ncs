/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M15
 * Generated at: 2017-01-31 03:18:08 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.board.model.*;
import java.util.*;

public final class board_005fcont_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/board/../include/login.jsp", Long.valueOf(1485824270979L));
    _jspx_dependants.put("/board/../include/header.jsp", Long.valueOf(1485824270979L));
    _jspx_dependants.put("/board/../include/footer.jsp", Long.valueOf(1485824270978L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("com.board.model");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- 외부 패키지 임포트 -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>메인 화면</title>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/main.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/board.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/member.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/bbs.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/index.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/admin.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/gongji.css\" />\r\n");
      out.write("<!-- css 외부 포함파일을 불러오는 것. css는  디자인 UI 를 작성 -->\r\n");
      out.write("<script src=\"./js/jquery-3.js\"></script>\r\n");
      out.write("<!-- jQuery 자바스크립트 라이브러리 외부 파일을 읽어온다 -->\r\n");
      out.write("<script src=\"./js/board.js\"></script>\r\n");
      out.write("<script src=\"./js/member.js\"></script>\r\n");
      out.write("<script src=\"./js/bbs.js\"></script>\r\n");
      out.write("<script src=\"./js/gongji.js\"></script>\r\n");
      out.write("<script src=\"./js/admin.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body> \r\n");
      out.write("<div id=\"site\">  \r\n");
      out.write("  <h3 align=\"center\">사용자 단 페이지 영역 </h3>   \r\n");
      out.write("</div>\r\n");
      out.write("<div id=\"main_wrap\">\r\n");
      out.write("  <!-- 상단 header -->\r\n");
      out.write("  <div id=\"header\">\r\n");
      out.write("    <div id=\"logo\">\r\n");
      out.write("     <a href=\"./index.jsp\" onfocus=\"this.blur()\">\r\n");
      out.write("     <img src=\"./images/logo.jpg\" width=\"200\" border=\"0\" />\r\n");
      out.write("     <!-- 그림삽입 태그 -->\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    <div id=\"top_menu\">\r\n");
      out.write("     <ul>\r\n");
      out.write("      <li><a href=\"gongji_list.do\" onfocus=\"this.blur()\">공지사항</a>      \r\n");
      out.write("      <li>\r\n");
      out.write("      <a href=\"./board_list.do\"\r\n");
      out.write("       onfocus=\"this.blur()\">게시판</a></li>\r\n");
      out.write("      <li><a href=\"bbs_list.do\" \r\n");
      out.write("       onfocus=\"this.blur()\">자료실</a></li>\r\n");
      out.write("       <li><a href=\"admin_login.do\" onfocus=\"this.blur()\">관리자</a></li>   \r\n");
      out.write("     </ul>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    <div id=\"top_login\">\r\n");
      out.write("     <ul>\r\n");
      out.write("      <li><a href=\"./index.jsp\" onfocus=\"this.blur()\">홈</a></li>\r\n");
      out.write("       &nbsp;\r\n");
      out.write("      <!-- &nbsp;은 한칸 공백을 띄워준다 .-->\r\n");
      out.write("      <li><a href=\"./member_Login.do\" \r\n");
      out.write("      onfocus=\"this.blur()\">로그인</a></li>\r\n");
      out.write("      <li><a href=\"./member_Join.do\"\r\n");
      out.write("      onfocus=\"this.blur()\">회원가입</a></li>\r\n");
      out.write("     </ul>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  ");
      out.write("\r\n");
      out.write("<!--  ../ 한 단계 상위 폴더로 이동, 외부 포함 파일을 읽어오는 jsp 형식  -->\r\n");
      out.write("\r\n");
      out.write("<div class=\"clear\"></div>\r\n");
      out.write("\r\n");
      out.write(" <div id=\"article\">\r\n");
      out.write("  ");
      out.write("\r\n");
      out.write("<div id=\"left_menu\">\r\n");
      out.write("      <script>\r\n");
      out.write("       function login_check(){//함수 정의\r\n");
      out.write("    \t   if(window.document.f.id.value==\"\"){\r\n");
      out.write("    \t\t    alert(\"아이디를 입력하세요!\");//경고창 띄운다.\r\n");
      out.write("    \t\t    f.id.focus();//포커스를 이동\r\n");
      out.write("    \t\t    return false;\r\n");
      out.write("    \t   }\r\n");
      out.write("           if($.trim($(\"#pwd\").val())==\"\"){\r\n");
      out.write("        \t   alert(\"비번을 입력하세요!\");\r\n");
      out.write("        \t   $(\"#pwd\").val(\"\").focus();//초기화 하고 포커스 이동\r\n");
      out.write("        \t   return false;\r\n");
      out.write("       \t   }\r\n");
      out.write("       }\r\n");
      out.write("       \r\n");
      out.write("       /*공지창 띄우기*/\r\n");
      out.write("       function pwd_find(){//함수정의\r\n");
      out.write("          window.open(\"./pwd_Find.do\",\"비번찾기\",\r\n");
      out.write("\t\t\"width=300px,height=300px,scrollbars=yes\");\r\n");
      out.write("       }\r\n");
      out.write("      </script>\r\n");
      out.write("      <form name=\"f\" method=\"post\" action=\"member_Login_ok.do\"\r\n");
      out.write("      onsubmit=\"return login_check()\">\r\n");
      out.write("        <table id=\"login_t\">\r\n");
      out.write("         <tr>\r\n");
      out.write("          <th>아이디</th>\r\n");
      out.write("          <!-- th태그는 열을 만들고 글자를 중앙 정렬,진하게 해준다. -->\r\n");
      out.write("          <td>\r\n");
      out.write("          <input type=\"text\" name=\"id\" id=\"id\" \r\n");
      out.write("          class=\"input_box\" size=\"14\" />\r\n");
      out.write("          </td>\r\n");
      out.write("         </tr>\r\n");
      out.write("         \r\n");
      out.write("         <tr>\r\n");
      out.write("           <th>비밀번호</th>\r\n");
      out.write("           <td>\r\n");
      out.write("            <input type=\"password\" name=\"pass\" id=\"pwd\" \r\n");
      out.write("            size=\"14\" class=\"input_box\" />\r\n");
      out.write("           </td>\r\n");
      out.write("         </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        <div id=\"login_menu\">\r\n");
      out.write("        <input type=\"submit\" value=\"로그인\" class=\"input_b\"/>\r\n");
      out.write("         <input type=\"reset\" value=\"취소\" class=\"input_b\"\r\n");
      out.write("               onclick=\"$('#id').focus();\" />\r\n");
      out.write("         <input type=\"button\" value=\"비번찾기\" class=\"input_b\" \r\n");
      out.write("         onclick=\"pwd_find()\" />         \r\n");
      out.write("        </div>\r\n");
      out.write("      </form>\r\n");
      out.write("     </div>");
      out.write("\r\n");
      out.write("  \r\n");
      out.write(" <div id=\"article_c\">\r\n");
      out.write(" ");

 	// getAttribute()메소드로 board 키 값을 받는다.
 	// 리턴 타입이 Object 형이기 때문에 BoardBean 타입으로 다운캐스팅한다.
 	BoardBean board = (BoardBean)request.getAttribute("bean");
 
      out.write("\r\n");
      out.write(" <h2 class=\"boardcont_title\">게시물 내용보기 </h2>\r\n");
      out.write(" <table id=\"boardcont_t\">\r\n");
      out.write("    <tr>\r\n");
      out.write("       <th> 작성자 </th>\r\n");
      out.write("       <td> ");
      out.print(board.getBoard_name() );
      out.write("</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("       <th> 조회수 </th>\r\n");
      out.write("       <td> ");
      out.print(board.getBoard_hit());
      out.write("</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("       <th> 제목 </th>\r\n");
      out.write("       <td>");
      out.print(board.getBoard_title() );
      out.write(" </td>    \r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("       <th> 글내용 </th>\r\n");
      out.write("       <td> ");
      out.print(board.getBoard_cont() );
      out.write(" \r\n");
      out.write("    </tr>    \r\n");
      out.write(" </table>\r\n");
      out.write("\t<div id=\"boardcont_menu\">\r\n");
      out.write("\t\t<input type=\"button\" value=\"수정\" class=\"input_b\" \r\n");
      out.write("\t\t\tonclick=\"location='board_edit.do?no=");
      out.print(board.getBoard_no());
      out.write("'\" />\r\n");
      out.write("\t\t<input type=\"button\" value=\"삭제\" class=\"input_b\" \r\n");
      out.write("\t\t\tonclick=\"location='board_del.do?no=");
      out.print(board.getBoard_no());
      out.write("'\" />\r\n");
      out.write("\t\t<input type=\"button\" value=\"목록\" class=\"input_b\"\r\n");
      out.write("\t\t\tonclick=\"location='board_list.do'\"/>\r\n");
      out.write("\t</div> \r\n");
      out.write(" </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"clear\"></div>\r\n");
      out.write("\r\n");
      out.write("<!-- 하단 내용 -->\r\n");
      out.write("    <div id=\"footer\">\r\n");
      out.write("    <h2 class=\"footer_title\">\r\n");
      out.write("     서울시 용산구 용산 첨단 디지털 단지 3차 30077호. TEL) 02-888-7777, FAX) 02-111-4444\r\n");
      out.write("    </h2>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
