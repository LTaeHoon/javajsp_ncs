/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M15
 * Generated at: 2017-01-24 02:13:18 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.descartes.birth;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class birth_005flist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/descartes/birth/../include/footer.jsp", Long.valueOf(1485223977071L));
    _jspx_dependants.put("/descartes/birth/../include/header.jsp", Long.valueOf(1485223977072L));
    _jspx_dependants.put("/descartes/birth/../include/article.jsp", Long.valueOf(1485223977068L));
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
      out.write("<!-- birth/birth_list.jsp -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>데카르트</title>\r\n");
      out.write("<link href=\"../css/style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write(" <script>\r\n");
      out.write(" function login_window(){ // 사용자 정의 함수\r\n");
      out.write("\t  window.open(\"../login/login_form.jsp\",\"로그인\",\r\n");
      out.write("\t\t\t     \"width=380px, height=250px\");\r\n");
      out.write("     // open(\"파일명\", \"창이름\", \"폭/넓이\");\r\n");
      out.write(" }\r\n");
      out.write(" function member(){\r\n");
      out.write("\t  window.open(\"../member/member_form.jsp\",\"회원가입\",\r\n");
      out.write("\t\t\t  \"width=380px, height=250px\");\r\n");
      out.write(" }\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("  <div class=\"container\">   <!-- 문서 영역 분류 -->\r\n");
      out.write("    <header> <!-- 머리말 영역 -->\r\n");
      out.write("        <div id=\"login\"> \r\n");
      out.write("           <a href=\"");
      out.print(request.getContextPath() );
      out.write("/descartes/index.jsp\">홈</a> | \r\n");
      out.write("           <a href=\"#\" onclick=\"login_window()\">로그인</a> | \r\n");
      out.write("           <a href=\"#\" onclick=\"member()\">회원가입</a>\r\n");
      out.write("        </div>       \r\n");
      out.write("       <hgroup>  <!-- 제목과 부제목을 그룹으로 묶어준다. -->\r\n");
      out.write("         <h1>데카르트, 서양 근대철학의 창시자</h1>\r\n");
      out.write("         <h2>Rene Descartes, 1596~1650</h2>\r\n");
      out.write("       </hgroup>\r\n");
      out.write("    </header> \r\n");
      out.write("    <nav class=\"nav\"> <!-- 네비게이션 영역 -->\r\n");
      out.write("\t   <ul> <!-- 순서 없는 목록 -->\r\n");
      out.write("         <li> <a href=\"../birth/birth_list.jsp\"> 탄 생</a></li>\r\n");
      out.write("         <li> <a href=\"../writing/writing_list.jsp\"> 저 서</a> </li>\r\n");
      out.write("         <li> <a href=\"../philosophy/philosophy_list.jsp\"> 철 학</a> </li>\r\n");
      out.write("         <li> <a href=\"../saying/saying_list.jsp\"> 명 언</a> </li>\r\n");
      out.write("      </ul>\r\n");
      out.write("    </nav>");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("  <section class=\"content\"> <!-- 문서의 절 : 여러 개 사용-->\r\n");
      out.write("    <h2>데카르트 탄생</h2>  <!-- 절 제목 -->   \r\n");
      out.write("     <article> <!-- 본문 -->\r\n");
      out.write("      <h3>르네 데카르트는 프랑스 투렌의 소도시 라에에서 부유한 \r\n");
      out.write("      귀족집안의 아들로 태어났다. </h3>\r\n");
      out.write("      <p>그의 고향 라에는 1996년 데카르트 탄생 400주년을 기념하여 \r\n");
      out.write("      도시 이름을 데카르트로 바꿨다. 데카르트가 </p> <p>한 살 때 \r\n");
      out.write("      어머니가 세상을 떠났고,열 살 무렵 라플레슈에서 예수회가 운영하는 학교, \r\n");
      out.write("      콜레쥬로얄 앙리르그랑에</p>\r\n");
      out.write("      <p>입학하여 8년간 고전어, 수사학, 철학,역사, 물리 등을 공부했다. 학교 기숙사의 규칙이 매우 엄격\r\n");
      out.write("      했지만, 데카르트는 건강상의 이유로 늦잠을 잘 수 있도록</p> \r\n");
      out.write("      <p>허락 받았다. 졸업 후 법률가가 되기를 바라는 아버지의 \r\n");
      out.write("      뜻에 따라 프와티에 대학에 입학했지만, </p>\r\n");
      out.write("      <p>1616년 ‘세상이라는\r\n");
      out.write("      큰 책’을 배우기 위해 대학을 떠났다.</p>\r\n");
      out.write("      \r\n");
      out.write("    <div class=\"picture\"><img src=\"../images/birth01.jpg\" width=\"680\" height=\"195\" \r\n");
      out.write("     alt=\"오른쪽 탁자에 있는 여왕의 오른쪽 인물이 데카르트\"></div>      \r\n");
      out.write("  </article>\r\n");
      out.write("</section>\r\n");
      out.write("  <aside class=\"sidebar\"> <!-- 문서 보조내용(알림,광고,링크 등)-->\r\n");
      out.write("    <h3 align=\"center\">◐ 저서 구입 ◑</h3>\r\n");
      out.write("    <p>저서 구입을 원하는 분은 전화 010-1234-5678로\r\n");
      out.write("         연락주시기 바랍니다. </p>\r\n");
      out.write("    <img src=\"../images/book1.png\" width=\"130\" height=\"160\">\r\n");
      out.write("    <img src=\"../images/book2.png\" width=\"130\" height=\"160\">    \r\n");
      out.write("  </aside> ");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("  <footer> <!-- 꼬리말 -->\r\n");
      out.write("    <p>글 : 표정훈 / 저술가, 번역가 </p>  \r\n");
      out.write("    <address>E-mail : author@naver.com</address> <!-- e-mail 주소 -->\r\n");
      out.write("    <p> Copyright ⓒ. All rights reserved.</p>      \r\n");
      out.write("  </footer>      \r\n");
      out.write("  </div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
