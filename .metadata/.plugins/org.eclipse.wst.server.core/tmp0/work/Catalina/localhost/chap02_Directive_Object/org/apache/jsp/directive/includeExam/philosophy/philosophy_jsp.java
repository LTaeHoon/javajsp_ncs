/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M15
 * Generated at: 2017-01-12 06:32:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.directive.includeExam.philosophy;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class philosophy_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/directive/includeExam/philosophy/../include/footer.jsp", Long.valueOf(1484202399850L));
    _jspx_dependants.put("/directive/includeExam/philosophy/../include/header.jsp", Long.valueOf(1484201987531L));
    _jspx_dependants.put("/directive/includeExam/philosophy/../include/article_philosophy.jsp", Long.valueOf(1484202709940L));
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

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>데카르트</title>\r\n");
      out.write("<link href=\"../css/style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\tfunction login_window(){\r\n");
      out.write("\t\twindow.open('../login/login.html','로그인','width=400px, height=250px');\t\t\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction member_window(){\r\n");
      out.write("\t\twindow.open('../member/member.html','회원가입','width=600px, height=420px');\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("  <div class=\"container\">   <!-- 문서 영역 분류 -->\r\n");
      out.write("    <header> <!-- 머리말 영역 -->\r\n");
      out.write("        <div id=\"login\"> \r\n");
      out.write("           <a href=\"../index.html\">홈</a> | <a href=\"#\" onclick=\"login_window()\">로그인</a> | <a href=\"#\" onclick=\"member_window()\">회원가입</a>\r\n");
      out.write("        </div>       \r\n");
      out.write("       <hgroup>  <!-- 제목과 부제목을 그룹으로 묶어준다. -->\r\n");
      out.write("         <h1>데카르트, 서양 근대철학의 창시자</h1>\r\n");
      out.write("         <h2>Rene Descartes, 1596~1650</h2>\r\n");
      out.write("       </hgroup>\r\n");
      out.write("    </header> \r\n");
      out.write("    <nav class=\"nav\"> <!-- 네비게이션 영역 -->\r\n");
      out.write("      <ul> <!-- 순서 없는 목록 -->\r\n");
      out.write("         <li> <a href=\"../birth/birth.html\"> 탄 생</a></li>\r\n");
      out.write("         <li> <a href=\"../writing/writing.html\"> 저 서</a> </li>\r\n");
      out.write("         <li> <a href=\"../philosophy/philosophy.html\"> 철 학</a> </li>\r\n");
      out.write("         <li> <a href=\"../saying/saying.html\"> 명 언</a> </li>\r\n");
      out.write("      </ul>\r\n");
      out.write("    </nav>\r\n");
      out.write("\r\n");
      out.write("    ");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write(" <section class=\"content\"> <!-- 문서의 절 : 여러 개 사용-->\r\n");
      out.write("    <h2>데카르트 철학</h2>  <!-- 절 제목 -->   \r\n");
      out.write("     <article> <!-- 본문 -->\r\n");
      out.write("      <h3>“나는 생각한다. 고로 존재한다.” 그러나 나의 존재의 근거는 신</h3>\r\n");
      out.write("      <p> “화이트헤드가 말한 것처럼 유럽 철학이 플라톤에 대한 각주라면, 근대 유럽 철학은 데카르트에 대한 각주다.”</p>\r\n");
      out.write("      <p> 근대는 무엇에서든 확실하고 단단한 토대를 요구하는 시대다. 내가 알고 있다고 여기는 것, 내가 믿고 있는 것 등</p>\r\n");
      out.write("      <p>  그 어떤 것에서든 분명하고 확실한 근거를 요구한다. 이러한 요구가 바로 근대적 합리정신이며, 데카르트는 </p>\r\n");
      out.write("      <p> 근대의 철학적 출발점이었다.</p>\r\n");
      out.write("      <p> 요컨대 “나는 생각한다. 고로 존재한다.” 데카르트는 이 명제야말로 다른 모든 것의 근거가 되는 가장 기초적인 </p>\r\n");
      out.write("      <p> 명제라 보았다. 데카르트는 이 명제를 “신은 존재한다”는 명제와 결합시킨다.</p>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"picture\"><img src=\"../images/bg2.png\" width=\"680\" height=\"195\" \r\n");
      out.write("     alt=\"오른쪽 탁자에 있는 여왕의 오른쪽 인물이 데카르트\"></div>      \r\n");
      out.write("  </article>\r\n");
      out.write("</section>\r\n");
      out.write("  <aside class=\"sidebar\"> <!-- 문서 보조내용(알림,광고,링크 등)-->\r\n");
      out.write("    <h3 align=\"center\">◐ 저서 구입 ◑</h3>\r\n");
      out.write("    <p>저서 구입을 원하는 분은 전화 010-1234-5678로\r\n");
      out.write("         연락주시기 바랍니다. </p>\r\n");
      out.write("    <img src=\"../images/book1.png\" width=\"130\" height=\"160\">\r\n");
      out.write("    <img src=\"../images/book2.png\" width=\"130\" height=\"160\">    \r\n");
      out.write("  </aside>");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write(" <footer> <!-- 꼬리말 -->\r\n");
      out.write("    <p>글 : 표정훈 / 저술가, 번역가 </p>  \r\n");
      out.write("    <address>E-mail : author@naver.com</address> <!-- e-mail 주소 -->\r\n");
      out.write("    <p> Copyright ⓒ. All rights reserved.</p>      \r\n");
      out.write("  </footer>      \r\n");
      out.write("  </div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write('\r');
      out.write('\n');
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
