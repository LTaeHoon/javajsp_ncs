/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M15
 * Generated at: 2017-01-13 02:03:26 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<title>로그인 화면</title>\r\n");
      out.write(" <!-- 제이쿼리 라이브러리 링크 -->\r\n");
      out.write(" <script type=\"text/javascript\" src=\"../js/jquery-3.js\"></script>\r\n");
      out.write(" <script>\r\n");
      out.write(" \tfunction data_check(){\r\n");
      out.write(" \t\tif($('#id').val()==\"\"){\r\n");
      out.write(" \t\t\talert('아이디를 입력하세요.');\r\n");
      out.write(" \t\t\t$('#id').focus();\r\n");
      out.write(" \t\t\treturn false; //서버 전송 차단\r\n");
      out.write(" \t\t}\r\n");
      out.write(" \t\tif($('#pwd').val()==\"\"){\r\n");
      out.write(" \t\t\talert('비번를 입력하세요.');\r\n");
      out.write(" \t\t\t$('#pwd').focus();\r\n");
      out.write(" \t\t\treturn false; //서버 전송 차단\r\n");
      out.write(" \t\t}\r\n");
      out.write(" \t}\r\n");
      out.write(" </script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<!-- action=\"http://192.168.0.79:8282/chap01_Jsp_Servlet/LoginServlet\" -->\r\n");
      out.write("\t<form name=\"frm\" method=\"post\" \r\n");
      out.write("\t  action=\"");
      out.print(request.getContextPath() );
      out.write("/LoginServlet\"\r\n");
      out.write("\t  onsubmit=\"return data_check()\">\r\n");
      out.write("\t  <!-- \r\n");
      out.write("\t  \tmethod : 데이터 전송방식(get/post) -> doGet()/doPost()\r\n");
      out.write("\t  \taction : 서버페이지 url \r\n");
      out.write("\t  \t\t-> url = http://ip:port번호/디렉토리명/처리파일명\r\n");
      out.write("\t  \t\t-> 간소화 시, 경로명/처리파일명 (client ,server가 동일한 컴퓨터에서 작업된 경우)\r\n");
      out.write("\t  \tonsubmit : \"data 검증 함수 호출\"\r\n");
      out.write("\t   -->\r\n");
      out.write("\t <div align=\"center\">\r\n");
      out.write("\t\t<table border=\"1\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<th>아이디</th>\r\n");
      out.write("\t\t\t\t<td><input type=\"text\" name=\"id\" id=\"id\"/>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<th>비밀번호</th>\r\n");
      out.write("\t\t\t\t<td><input type=\"password\" name=\"pwd\" id=\"pwd\"/>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td colspan=\"2\" align=\"center\">\r\n");
      out.write("\t\t\t\t\t<input type=\"submit\" value=\"전송\" />\r\n");
      out.write("\t\t\t\t\t<input type=\"reset\" value=\"취소\"/>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<!-- \r\n");
      out.write("\t\t\t\t\ttype=\"submit\": 버튼 클릭 시 action으로 지정된\r\n");
      out.write("\t\t\t\t\t페이지로 데이터가 전송되는 방식\r\n");
      out.write("\t\t\t\t\tname 속성 : 서버로 전송 시 값을 저장하는 변수명 지정\r\n");
      out.write("\t\t\t\t -->\t\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t </div>\r\n");
      out.write("\t</form>\t\r\n");
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
