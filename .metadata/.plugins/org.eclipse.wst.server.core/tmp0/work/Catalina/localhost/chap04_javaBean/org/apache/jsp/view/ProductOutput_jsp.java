/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M15
 * Generated at: 2017-01-18 07:21:45 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.ProductBean;

public final class ProductOutput_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("model.ProductBean");
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
 request.setCharacterEncoding("UTF-8"); 
	ProductBean pro = (ProductBean)request.getAttribute("pro");
	//이전 페이지 ProductController에서 pro 객체 키값을 받는다. request.getAttribute로 받아오는 키값은 이 페이지 까지만 사용가능

      out.write("\r\n");
      out.write("\t<!--  request.getContextPath() : 현재 프로젝트의 경로 값을 가져온다 (chap04_javaBean) -->\r\n");
      out.write("   <form method=\"post\" action=\"");
      out.print(request.getContextPath());
      out.write("/view/logOut.jsp\">\r\n");
      out.write("    <table border=\"1\" align=\"center\" width=\"500\">     \t  \r\n");
      out.write("   \t <tr>\t\t\r\n");
      out.write("   \t    <th>&nbsp;사번 : <input name=\"sabun\" size=\"8\" \r\n");
      out.write("   \t         value='");
      out.print(session.getAttribute("sabun"));
      out.write("'/>\r\n");
      out.write("   \t    <br>\r\n");
      out.write("   \t    이름 : <input name=\"name\" size=\"8\" \r\n");
      out.write("   \t          value='");
      out.print(session.getAttribute("saname"));
      out.write("'/>\r\n");
      out.write("   \t    </th>\r\n");
      out.write("   \t    <td align=\"center\">\r\n");
      out.write("   \t       <input type=\"submit\" value=\"로그아웃\" id=\"btn\">\r\n");
      out.write("   \t    </td>\r\n");
      out.write("   \t    <td rowspan=\"4\">\r\n");
      out.write(" \t\t  <img src=\"./view/img/");
      out.print(pro.getImage());
      out.write("\" width=\"240\" height=\"280\">\t\t\r\n");
      out.write("\t\t</td>   \t    \r\n");
      out.write("   \t </tr> \r\n");
      out.write("   \t \r\n");
      out.write("\t <tr>\r\n");
      out.write("\t\t<th>제품코드 </th>\t\t\r\n");
      out.write("\t\t<td align=\"center\"> ");
      out.print(pro.getProcode() );
      out.write(" </td>\t\t\r\n");
      out.write("\t </tr>\r\n");
      out.write("\t <tr>\r\n");
      out.write("\t\t<th> 제품명 </th>\r\n");
      out.write("\t\t<td align=\"center\"> ");
      out.print( pro.getProname() );
      out.write(" </td>\r\n");
      out.write("\t </tr>\r\n");
      out.write("\t <tr>\r\n");
      out.write("\t\t<th> 가 격 </th>\r\n");
      out.write("\t\t<td align=\"center\"> ");
      out.print(pro.getPrice() );
      out.write("</td>\r\n");
      out.write("\t </tr>\t\r\n");
      out.write("    </table>\r\n");
      out.write("   </form> \r\n");
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