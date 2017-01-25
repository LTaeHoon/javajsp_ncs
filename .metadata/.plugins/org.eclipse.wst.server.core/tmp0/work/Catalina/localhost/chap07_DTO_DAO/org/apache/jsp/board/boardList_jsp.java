/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M15
 * Generated at: 2017-01-23 07:57:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.board.model.BoardDTO;
import java.util.List;
import com.board.model.BoardDAO;

public final class boardList_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes.add("com.board.model.BoardDTO");
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("com.board.model.BoardDAO");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- boardList.jsp : 게시물 전체 목록 보기 -->\r\n");
      out.write("<style>\r\n");
      out.write("\ttable,td,th{border-collapse:collapse;}\r\n");
      out.write("\ttable{border:1px solid black;width:500;margin:auto;text-align:center;}\r\n");
      out.write("\ttd,th{border:1px solid black;}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<table>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<th>글번호</th> <th>작성자</th>\r\n");
      out.write("\t\t<th>글제목</th> <th>등록날짜</th>\r\n");
      out.write("\t\t<th>조회수</th>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t");
 
		BoardDAO dao = new BoardDAO(); //db 연동 객체 생성
		List<BoardDTO> list = dao.getBoardList();
		
		if(list.size()>0){
			for(int i=0;i<list.size();i++){ //레코드 수반복
				BoardDTO dto =list.get(i); //BoardDTO
				
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(dto.getBoard_no() );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(dto.getBoard_name() );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t<!-- 글제목에 링크 걸기 : 클릭하면 현재 게시물 번호 넘김\r\n");
      out.write("\t\t\t\t\t\tboardCont.jsp -->\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"boardCont.jsp?no=");
      out.print(dto.getBoard_no() );
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");
      out.print(dto.getBoard_title() );
      out.write("</a>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(dto.getBoard_regdate().substring(0,10) );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t<td>");
      out.print(dto.getBoard_hit() );
      out.write("</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t");

			}
		}else{
			
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<th colspan=\"5\">\r\n");
      out.write("\t\t\t\t\t\t<h2>게시물 목록 없음</h2>\r\n");
      out.write("\t\t\t\t\t</th>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t");
 
		}
		
	
      out.write("\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td colspan=\"5\"><a href=\"boardWrite.jsp\">게시물 쓰러가기</a></td>\r\n");
      out.write("\t<tr>\r\n");
      out.write("</table>\r\n");
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
