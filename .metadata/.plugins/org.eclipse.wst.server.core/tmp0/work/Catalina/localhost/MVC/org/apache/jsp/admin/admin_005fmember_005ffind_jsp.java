/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M15
 * Generated at: 2017-02-01 03:30:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.member.model.*;

public final class admin_005fmember_005ffind_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(5);
    _jspx_dependants.put("/WEB-INF/lib/standard.jar", Long.valueOf(1485241512732L));
    _jspx_dependants.put("jar:file:/C:/NCS/jsp/workspace(jsp)/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/MVC/WEB-INF/lib/standard.jar!/META-INF/c.tld", Long.valueOf(1098678690000L));
    _jspx_dependants.put("/admin/../include/admin_login.jsp", Long.valueOf(1485919251444L));
    _jspx_dependants.put("/admin/../include/footer.jsp", Long.valueOf(1485824270978L));
    _jspx_dependants.put("/admin/../../include/admin_header.jsp", Long.valueOf(1485919251443L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("com.member.model");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;

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
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
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
      out.write("  \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("    <!-- html  주석문기호. 위 부분은 jsp(java server pages) 에서\r\n");
      out.write("    지시자라고 한다. 즉   jsp 정의문 -->\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>메인 화면</title>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/main.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/admin.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/agongji.css\" />\r\n");
      out.write("\r\n");
      out.write("<script src=\"./js/jquery.js\"></script>\r\n");
      out.write("<script src=\"./js/admin.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body> \r\n");
      out.write("<div id=\"site\">  \r\n");
      out.write("  <h3 align=\"center\">관리자 단 페이지 영역 </h3>   \r\n");
      out.write("</div>\r\n");
      out.write("<div id=\"main_wrap\">\r\n");
      out.write("  <!-- 상단 header -->\r\n");
      out.write("  <div id=\"header\">\r\n");
      out.write("    <div id=\"logo\">\r\n");
      out.write("     <a href=\"./index.jsp\" onfocus=\"this.blur()\">\r\n");
      out.write("     <img src=\"./images/logo.jpg\" width=\"200\" border=\"0\" /></a>\r\n");
      out.write("     <!-- 그림삽입 태그 -->\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    <div id=\"top_menu\">\r\n");
      out.write("     <ul>\r\n");
      out.write("      <li><a href=\"admin_gongji_list.do\" onfocus=\"this.blur()\"><font color=\"green\">공지사항</font></a></li>\r\n");
      out.write("      <li><a href=\"#\"onfocus=\"this.blur()\"><font color=\"green\">게시판</font></a></li>\r\n");
      out.write("      <li><a href=\"#\" onfocus=\"this.blur()\"><font color=\"green\">자료실</font></a></li>\r\n");
      out.write("      <li><a href=\"admin_member_list.do\" onfocus=\"this.blur()\"><font color=\"green\">회원관리</font></a></li>\r\n");
      out.write("     </ul>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    <div id=\"top_login\">\r\n");
      out.write("     <ul>\r\n");
      out.write("      <li><a href=\"./admin_main.do\" onfocus=\"this.blur()\">관리자 홈</a></li>      \r\n");
      out.write("      <li><a href=\"./admin_logout_ok.do\" onfocus=\"this.blur()\">\r\n");
      out.write("      <font color=\"green\">로그아웃</font></a></li>\r\n");
      out.write("      \r\n");
      out.write("     </ul>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>");
      out.write("\r\n");
      out.write("<div class=\"clear\"></div>\r\n");

request.setCharacterEncoding("UTF-8");
List<MemberBean> memList=(List<MemberBean>)request.getAttribute("memList");
//setAttribute()에 의해서 Object형으로 업캐스팅 되면서
//키값에 저장된다. 반환되는 값도 다운캐스팅을 해서 저장한다.
//다운캐스팅은 업캐스팅이 된것에 한해서 다운캐스팅이 된다.
//레퍼런스간의 캐스팅 즉 다운(업)캐스팅은 상속이 된것에 한에서만
//허용된다.
//int listcount1=((Integer)request.getAttribute("listcount1")).intValue();
//int listcount2=((Integer)request.getAttribute("listcount2")).intValue();

int nowpage=((Integer)request.getAttribute("page")).intValue();
int maxpage=((Integer)request.getAttribute("maxpage")).intValue();
int startpage=((Integer)request.getAttribute("startpage")).intValue();
int endpage=((Integer)request.getAttribute("endpage")).intValue();

      out.write("\r\n");
      out.write(" <div id=\"article\">\r\n");
      out.write("  ");
      out.write("\r\n");
      out.write("<div id=\"left_menu\">\r\n");
      out.write("     ");
 
      // 세션 객체를 받아서 String으로 캐스팅한다. 
      String admin_id=
          (String)session.getAttribute("admin_id"); 
     
      out.write("\r\n");
      out.write("     <div id=\"aMain_Login\">\r\n");
      out.write("     <form method=\"post\" action=\"admin_logout_ok.do\">\r\n");
      out.write("       <table id=\"aLogin_t\">\r\n");
      out.write("        <tr>\r\n");
      out.write("         <th>\r\n");
      out.write("          <b>");
      out.print(admin_id );
      out.write("관리자님 <br>로그인을 환영합니다.\r\n");
      out.write("          </b>\r\n");
      out.write("          </th>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr> <td> &nbsp; </td> </tr>\r\n");
      out.write("        <tr> \r\n");
      out.write("          <th>\r\n");
      out.write("            <input type=\"submit\" value=\"로그아웃\"\r\n");
      out.write("                   class=\"admin_b\"/>\r\n");
      out.write("          </th>         \r\n");
      out.write("        </tr>\r\n");
      out.write("       </table>\r\n");
      out.write("     </form>\r\n");
      out.write("    </div>\r\n");
      out.write("</div> ");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("  <div id=\"article_c\">\r\n");
      out.write("<!-- 본문 내용 -->\r\n");
      out.write("   <div id=\"aMember_wrap\">\r\n");
      out.write("    <div id=\"aMember_list\">\r\n");
      out.write("      <h2 class=\"aMember_title\">관리자 검색회원 목록</h2>\r\n");
      out.write("\t\t<div id=\"aMember_count\">\r\n");
      out.write("\t\t\t검색회원 수 : ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${listcount}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("<br />\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<table id=\"aMember_t\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td class=\"id\">아이디</td>\r\n");
      out.write("\t\t\t\t<td class=\"name\">회원이름</td>\r\n");
      out.write("\t\t\t\t<td class=\"phone\">폰번호</td>\r\n");
      out.write("\t\t\t\t<td class=\"date\">가입날짜</td>\r\n");
      out.write("\t\t\t\t<td class=\"state\">가입유무</td>\r\n");
      out.write("\t\t\t\t<td class=\"no\">수정</td>\r\n");
      out.write("\t\t\t\t<td class=\"no\">삭제</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t");
	    	
	 if((memList != null) && (memList.size()>0)){
		for(int i=0;i<memList.size();i++){
			MemberBean m=memList.get(i);			
	
      out.write("\r\n");
      out.write("\t\t\t<tr align=\"center\" valign=\"middle\" >\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<td align=\"center\">\r\n");
      out.write("\t\t\t\t <a\r\n");
      out.write("\t\t\t\t\thref=\"admin_mem_cont.do?mem_id=");
      out.print(m.getMember_id());
      out.write("&page=");
      out.print(nowpage);
      out.write("&state=cont\"\r\n");
      out.write("\t\t\t\t\tonfocus=\"this.blur();\">");
      out.print(m.getMember_id());
      out.write("</a>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<td>");
      out.print(m.getMember_name() );
      out.write("</td>\r\n");
      out.write("\t\t\t\t<td>");
      out.print(m.getMember_nickname());
      out.write("</td>\r\n");
      out.write("\t\t\t\t<td>");
      out.print(m.getMember_regdate().substring(0,10));
      out.write("</td>\r\n");
      out.write("\t\t\t\t<td>");
      out.print(m.getMember_state());
      out.write("</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("<input type=\"button\" value=\"수정\" class=\"admin_b\"\r\n");
      out.write("onclick=\"location='admin_member_edit.do?mem_id=");
      out.print(m.getMember_id());
      out.write("&page=");
      out.print(nowpage);
      out.write("'\" />\t\t\t\t\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("<input type=\"button\" value=\"삭제\" class=\"admin_b\"\r\n");
      out.write("onclick=\"if(confirm('정말로 삭제 하시겠습니까?')){\r\n");
      out.write("location='admin_member_del_ok.do?mem_id=");
      out.print(m.getMember_id());
      out.write("&page=");
      out.print(nowpage);
      out.write("' \r\n");
      out.write("}else{ return; }\" />\r\n");
      out.write("<!-- 자바스크립트에서 window객체 하위의 confirm()메서드는 확인/취소 단추\r\n");
      out.write("를 가진 경고창을 만들어 준다. 확인단추를 클릭하면 반환값으로 true로 리턴하고,\r\n");
      out.write("취소 단추를 클릭하면false를 반환한다. 즉 관리자 모드에서 삭제 유무를 다시\r\n");
      out.write("확인하기 위해서 주로 사용한다. 확인을 클릭하면 삭제창으로 이동하고,취소를\r\n");
      out.write("클릭하면 삭제를 안하고 그대로 현재창에 있게 된다. --> \t\t\t\t\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t");
	   
		} }else{
      out.write("\r\n");
      out.write("\t\t    <tr>\r\n");
      out.write("\t\t     <th colspan=\"8\">검색 회원이 없습니다!</th>\r\n");
      out.write("\t\t    </tr> \r\n");
      out.write("\t\t");
 } 
      out.write("\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t\t<div id=\"aMember_paging\">\r\n");
      out.write("\t\t\t");
if(nowpage<=1){ 
      out.write("\r\n");
      out.write("\t\t\t[이전]&nbsp;\r\n");
      out.write("\t\t\t");
}else{ 
      out.write("\r\n");
      out.write("\t\t\t<a href=\"admin_member_find.do?page=");
      out.print(nowpage-1 );
      out.write("&find_name=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${find_name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("&find_field=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${find_field}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" onfocus=\"this.blur();\">[이전]</a>&nbsp;\r\n");
      out.write("\t\t\t");
} 
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t");
for(int a=startpage;a<=endpage;a++){
				if(a==nowpage){
      out.write("\r\n");
      out.write("\t\t\t[");
      out.print(a );
      out.write("]\r\n");
      out.write("\t\t\t");
}else{ 
      out.write("\r\n");
      out.write("\t\t\t<a href=\"admin_member_find.do?page=");
      out.print(a );
      out.write("&find_name=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${find_name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("&find_field=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${find_field}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" onfocus=\"this.blur();\">[");
      out.print(a );
      out.write("]\r\n");
      out.write("\t\t\t</a>&nbsp;\r\n");
      out.write("\t\t\t");
} 
      out.write("\r\n");
      out.write("\t\t\t");
} 
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t");
if(nowpage>=maxpage){ 
      out.write("\r\n");
      out.write("\t\t\t[다음]\r\n");
      out.write("\t\t\t");
}else{ 
      out.write("\r\n");
      out.write("\t\t\t<a href=\"admin_member_find.do?page=");
      out.print(nowpage+1 );
      out.write("&find_name=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${find_name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("&find_field=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${find_field}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" onfocus=\"this.blur();\">[다음]</a>\r\n");
      out.write("\t\t\t");
} 
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t<!-- 관리자 회원 검색 부분 -->\r\n");
      out.write("\t\t<div id=\"aMember_find\">\r\n");
      out.write("\t\t  <script>\r\n");
      out.write("\t\t    function find_check(){\r\n");
      out.write("\t\t    \tif($.trim($(\"#find_name\").val())==\"\"){\r\n");
      out.write("\t\t    \t\talert(\"검색어를 입력하세요!\");\r\n");
      out.write("\t\t    \t\t$(\"#find_name\").val(\"\").focus();\r\n");
      out.write("\t\t    \t\treturn false;\r\n");
      out.write("\t\t    \t}\r\n");
      out.write("\t\t    }\r\n");
      out.write("\t\t  </script>\r\n");
      out.write("\t\t  <form method=\"get\" action=\"admin_member_find.do\"\r\n");
      out.write("\t\t  onsubmit=\"return find_check()\">\r\n");
      out.write("\t\t      <table id=\"aGlistFind_t\">\r\n");
      out.write("\t\t        <tr>\r\n");
      out.write("\t\t         <td>\r\n");
      out.write("\t\t         <select name=\"find_field\">\r\n");
      out.write("\t\t          <option value=\"member_id\" \r\n");
      out.write("\t\t          ");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write(">아이디</option>\r\n");
      out.write("\t\t          <option value=\"member_name\" \r\n");
      out.write("\t\t          ");
      if (_jspx_meth_c_005fif_005f1(_jspx_page_context))
        return;
      out.write(">회원이름</option>\t\t          \t          \r\n");
      out.write("\t\t         </select>\r\n");
      out.write("\t\t         <input name=\"find_name\" id=\"find_name\" size=\"10\"\r\n");
      out.write("\t\t         class=\"admin_box\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${find_name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" />\r\n");
      out.write("\t\t         <input type=\"submit\" value=\"검색\" class=\"admin_b\"  />\r\n");
      out.write("\t\t         <input type=\"button\" value=\"목록\" \r\n");
      out.write("                   onclick=\"location='admin_member_list.do'\"/>\r\n");
      out.write("\t\t         </td>\r\n");
      out.write("\t\t        </tr>\r\n");
      out.write("\t\t      </table>\r\n");
      out.write("\t\t  </form>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("    </div>\r\n");
      out.write("    </div>\r\n");
      out.write("   </div> \r\n");
      out.write("  </div>\r\n");
      out.write("  <div class=\"clear\"></div>\r\n");
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

  private boolean _jspx_meth_c_005fif_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    try {
      _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f0.setParent(null);
      // /admin/admin_member_find.jsp(128,12) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${find_field == 'mem_id'}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
      if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t\t       ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${'selected'}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } finally {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    try {
      _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f1.setParent(null);
      // /admin/admin_member_find.jsp(131,12) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${find_field == 'mem_name'}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
      if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t\t       ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${'selected'}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          int evalDoAfterBody = _jspx_th_c_005fif_005f1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fif_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } finally {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
    }
    return false;
  }
}