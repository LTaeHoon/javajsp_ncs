/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M15
 * Generated at: 2017-01-31 06:13:18 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class board_005fResult_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/board/../include/login.jsp", Long.valueOf(1485824270979L));
    _jspx_dependants.put("/board/../include/footer.jsp", Long.valueOf(1485824270978L));
  }

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
      out.write(" \t<!-- 본문 내용 작성 : EL로 키 출력(name,age) -->\r\n");
      out.write(" \t<h2> 데이터 저장 폼</h2>\r\n");
      out.write("\t<form action=\"");
      out.print(request.getContextPath() );
      out.write("/write.do\" method=\"post\">\r\n");
      out.write("\t\t이름 : <input name=\"name\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"/>\r\n");
      out.write("\t\t나이 : <input name=\"age\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${age}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"/>\r\n");
      out.write("\t   <input type=\"submit\" value=\"저장\"/>\r\n");
      out.write("\t</form>\r\n");
      out.write(" </div>\r\n");
      out.write(" </div>\r\n");
      out.write(" <div class=\"clear\"></div>\r\n");
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
      out.write('\r');
      out.write('\n');
      out.write(' ');
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
