/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M15
 * Generated at: 2017-01-31 06:53:07 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class member_005flogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>로그인 폼</title>\r\n");
      out.write("<!-- 외부 css 파일과 제이쿼리 라이브러리 링크 -->\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/member.css\"/>\r\n");
      out.write("<script src=\"./js/jquery-3.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("    function check(){  // 아이디와 비번 체크 함수\r\n");
      out.write("    \tif($.trim($(\"#id\").val())==\"\"){\r\n");
      out.write("    \t\talert(\"로그인 아이디를 입력하세요!\");\r\n");
      out.write("    \t\t$(\"#id\").val(\"\").focus();\r\n");
      out.write("    \t\treturn false;\r\n");
      out.write("    \t}\r\n");
      out.write("    \tif($.trim($(\"#pass\").val())==\"\"){\r\n");
      out.write("    \t\talert(\"로그인 비밀번호를 입력하세요!\");\r\n");
      out.write("    \t\t$(\"#pass\").val(\"\").focus();\r\n");
      out.write("    \t\treturn false;\r\n");
      out.write("    \t}\r\n");
      out.write("    }    \r\n");
      out.write("    /* 비번 찾기 */\r\n");
      out.write("    function pwd_find(){\r\n");
      out.write("    \twindow.open(\"pwd_Find.do\", \"비번찾기\", \"width=300, height=300\");\r\n");
      out.write("    \t// 자바스크립트에서 window.open(\"공지창경로/파일명\",\"창이름\", \"크기속성\")\r\n");
      out.write("    \t// 메소드는 공지창을 만든다.\r\n");
      out.write("    }    \r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("  <div id=\"login_wrap\">\r\n");
      out.write("  <h2 class=\"login_title\">로그인 폼</h2>\r\n");
      out.write("  <form method=\"post\" action=\"member_Login_ok.do\"\r\n");
      out.write("        onsubmit=\"return check()\">\r\n");
      out.write("    <table id=\"login_t2\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <th> 아이디</th>\r\n");
      out.write("        <td> <input name=\"id\" id=\"id\" class=\"login_box\"> </td>\r\n");
      out.write("      </tr>  \r\n");
      out.write("      <tr>\r\n");
      out.write("        <th> 비밀번호</th>\r\n");
      out.write("        <td> <input type=\"password\" name=\"pass\"\r\n");
      out.write("               id=\"pass\" class=\"login_box\"> </td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("      <div id=\"login_menu\">\r\n");
      out.write("        <input type=\"submit\" value=\"로그인\" />\r\n");
      out.write("        <input type=\"reset\" value=\"메인\"\r\n");
      out.write("               onclick=\"location='./index.jsp'\" />                              \r\n");
      out.write("        <input type=\"button\" value=\"회원가입\" \r\n");
      out.write("               onclick=\"location='member_Join.do'\" />\r\n");
      out.write("        <input type=\"button\" value=\"비번찾기\"\r\n");
      out.write("               onclick=\"pwd_find()\" />\r\n");
      out.write("      </div>    \r\n");
      out.write("  </form>\r\n");
      out.write("  </div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
