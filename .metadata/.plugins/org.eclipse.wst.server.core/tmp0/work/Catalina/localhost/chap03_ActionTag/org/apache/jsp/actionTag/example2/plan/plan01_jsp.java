/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.0.M15
 * Generated at: 2017-01-17 02:37:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.actionTag.example2.plan;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class plan01_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<h1 align=\"center\">사회초년생 첫 재테크</h1>\r\n");
      out.write("<h4 align=\"center\">20대 후배에게 들려주고 싶은 은퇴 이야기</h4><br>\r\n");
      out.write("\r\n");
      out.write("얼마 전 개봉했던 한 영화는 은퇴 후 황혼기에 접어든 일곱 명의 주인공들이 낯선 나라 인도에서 겪는 다양한 노년의 모습을 그렸다. \r\n");
      out.write("영화 속에서는 어떤 이는 그곳에서 생을 마치거나 배필과 헤어지기도 하고, 어떤 이는 새로운 사랑을 만나 새 출발을 하기도 한다. \r\n");
      out.write("(The Best Exotic Marygold Hotel. 2012)\r\n");
      out.write("<br><br>\r\n");
      out.write("영화뿐만 아니라 현실에서도, 노년이 그저 삶을 마무리하고 죽음만 준비하는 시절만은 아니란 공감대가 형성되고 있다. \r\n");
      out.write("바야흐로 100세 시대가 왔기 때문이다. \r\n");
      out.write("현재의 30대가 노년이 되는 2030년에는 평균수명이 남자 80세, 여자 85세 정도라 하니, 은퇴 이후 근 30년을 더 산다고 생각하면 노년의 \"새 출발\"은 당연하다고 할 수 있겠다.<br><br>\r\n");
      out.write("<hr>\r\n");
      out.write("<h4 align=\"center\">마흔이 되어 돌아본 나의 이십대</h4>\r\n");
      out.write("<hr><br>\r\n");
      out.write("<img src=image/1.PNG style=\"float:left; padding: 0 20px 10px 0;\">\r\n");
      out.write("필자가 사회생활을 처음 시작했던 1990년대 중반에도, 돈을 벌려면 사회생활을 시작하자마자 무조건 아파트를 사라는 선배들의 가르침이 있었다. \r\n");
      out.write("하지만 꼬박꼬박 나오는 월급이 주는 안일함을 뒤로하고 허리띠를 졸라매고 아파트를 사서 이른바 \"재테크\"에 성공했던 부류는 따로 있었다.\r\n");
      out.write("바로 사회생활과 함께 결혼한 친구들이었다. \r\n");
      out.write("자주 이사해야 하는 전세보다다는 빚 져서라도 집을 사야겠다고 생각한 그들은 은행대출 상환과 교육비를 생각해 맞벌이와 더욱 더 검소한 생활을 하며 빚을 갚았다.\r\n");
      out.write("또한, 일찍 아이를 낳아 회사에서 지원하는 대학 학자금을 모두 수혜 받게 됐다. \r\n");
      out.write("그래서 필자의 친구들이 모일 때면 젊었을 때 어떻게 해서라도 첫사랑과 일찌감치 결혼했어야 했다는 농담을 나누곤 한다. \r\n");
      out.write("하지만 그 농담도 과거의 것일 뿐, 현재 상황은 전혀 다르다. \r\n");
      out.write("20대 비정규직의 평균급여는 90만 원대, 학자금 대출도 남았고 결혼조차 미루고 일하고 있다.\r\n");
      out.write("설사 결혼을 해도 맞벌이는 맘대로 되지 않는다. \r\n");
      out.write("게다가 부모님은 손주를 봐 주실 생각이 없다고 하신다. \r\n");
      out.write("이 상황에서 재테크나 은퇴 준비를 한다는 것은 참 어려운 시대가 됐다.<br><br>\r\n");
      out.write("<hr>\r\n");
      out.write("<h4 align=\"center\">신입사원 시절로 돌아간다면!</h4>\r\n");
      out.write("<hr><br>\r\n");
      out.write("<p align=\"center\"><img src=image/2.PNG></p>\r\n");
      out.write("그럼에도 2030세대도 은퇴준비는 반드시 필요하다. \r\n");
      out.write("왜냐면 무계획적인 은퇴 이후의 삶은 꼭 재정적 문제만 야기시키는 게 아니기 때문이다. \r\n");
      out.write("준비 없는 은퇴는 인간관계를 초기화 시키고, 무위(無爲)의 고통에 빠지게 하며, 부부조차 등 돌리게 하고 심지어 스스로를 극단적인 선택으로 몰아넣기도 한다. \r\n");
      out.write("결국, 개인과 사회 모두 불행해지는 결과를 낳고 말 것이다.\r\n");
      out.write("필자가 다시 사회초년생 시절로 돌아가 새로 시작한다면 이렇게 은퇴준비를 할 것이다.\r\n");
      out.write("<br><br>\r\n");
      out.write("<h4>1. 인생의 밑그림을 그린다.</h4>\r\n");
      out.write("인생이 설계한 대로 마냥 장밋빛은 아니다. \r\n");
      out.write("그렇다고 설계조차 없다면 인생의 모진 비바람을 감당할 수 있는 든든하고 안전한 건물을 지을 수 없다. \r\n");
      out.write("미래는 아무도 모른다고는 하지만 인생계획을 하다 보면, 확실히 일어날 일과 예기치 않은 두 가지로 나누어지는 것을 알게 되며 무엇을 준비할지 구체적으로 생각하게 한다. \r\n");
      out.write("특히 미래에 결혼하고, 자녀를 낳아 대학에 보내고 결혼 시키는 것과 같은 이벤트는 어떤 시점에 무엇을 준비해야 할지 판단하게 해준다.\r\n");
      out.write("<br><br>\r\n");
      out.write("<h4>2. 행복에 관한 가치관을 세운다.</h4>\r\n");
      out.write("행복이란? 내가 원하는 삶이란 무엇인가? \r\n");
      out.write("내 꿈을 위한 버킷 리스트는 있는가? \r\n");
      out.write("완벽한 삶은 있을 수 없다. \r\n");
      out.write("단지 돈, 사람, 일, 취미 등 하나씩 하니씩 꾸준히 최선을 다해 가는 삶이 있을 뿐이다. \r\n");
      out.write("또한, 문제가 발생했을 때 어떠한 기준으로 문제를 풀어가야 할지 기준을 설정하고 배우자와 공유해야 한다. \r\n");
      out.write("특히 사람과 사람이 공존하며 사는 공동체의 삶과 취미생활은 은퇴 이후까지 이어지므로 젊어서부터 은퇴까지 함께해도 좋을 사람들은 사귀고 한편으로는 여가선용을 위한 취미생활에 노력해야 한다. \r\n");
      out.write("물론 좋은 사람들과 함께하는 즐거운 취미가 봉사활동까지 이어진다면 참으로 행복한 은퇴설계라 할 수 있다.\r\n");
      out.write("<br><br>\r\n");
      out.write("<h4>3. 보험으로 위험을 보호한다.</h4>\r\n");
      out.write("매달 급여가 꼬박꼬박 나올 정도로 자리가 잡히면 재테크를 생각하게 된다. \r\n");
      out.write("그런데 만약 뜻하지 않은 질병이나 사고로 직장을 잃게 되거나 가족 중 아픈 사람이 있어 간호를 해야 한다면 재테크는 꿈도 꿀 수 없다. \r\n");
      out.write("보험은 위험으로부터 나와 내 가족을 보호하고 인간의 존엄성을 지켜주는 최우선적인 안전장치다.\r\n");
      out.write("<br><br>\r\n");
      out.write("<h4>4. 끊임없이 배우고 또 배운다.</h4>\r\n");
      out.write("계속 공부하는 자세를 가지면 뇌에서 새로운 정보를 받아들이는 해마의 크기가 줄거나 퇴화하지 않는다고 한다. \r\n");
      out.write("오히려 신경을 자극해 건강한 근육을 유지하게 하고 새로운 뇌세포를 만들어내기도 한다. \r\n");
      out.write("젊음의 시간을 자기계발에 투자해 노후의 건강까지 챙겨라.\r\n");
      out.write("<br><br>\r\n");
      out.write("<h4>5. 반드시 일찍 시작한다.</h4>\r\n");
      out.write("악기나 운동도 젊을 때 배우면 좋다. \r\n");
      out.write("은퇴준비도 일찍 시작하면 할수록 좋다. \r\n");
      out.write("친구와 와인은 오래될수록 좋다고 하는 말과 일맥상통한다. \r\n");
      out.write("하지만 현실은 그렇지 못한 것 같다. \r\n");
      out.write("한 설문조사 기관의 조사에 따르면, 일반적으로 은퇴준비를 시작해야겠다고 생각하는 평균나이는 36세로 조사됐다. \r\n");
      out.write("실천을 못 하는 이유로는 '경제적 여력 부족, 은퇴시기를 몰라서, 은퇴생각을 못 해봐서'라고 답했다. \r\n");
      out.write("바야흐로 100세 시대다. \r\n");
      out.write("은퇴 이후의 30년이 뻔히 내다보이는 이런 상황에서 위 세 가지 이유는 변명일 수밖에 없다. \r\n");
      out.write("작은 실천부터 은퇴 준비를 시작해야 할 때다.\r\n");
      out.write("<br><br>\r\n");
      out.write("2030세대여, 자신의 상황에 맞게 은퇴 이후의 행복한 삶을 설계해 보자. 작시성반(作始成半), 시작이 반이다!<br><br>\r\n");
      out.write("<hr>\r\n");
      out.write("<b>글</b> 정화식<br>\r\n");
      out.write("<b>기획</b> 정아람 기자<br>\r\n");
      out.write("<b>발행</b> (주)이패스코리아<br>\r\n");
      out.write("<b>제공</b> 머니플러스<br><br>\r\n");
      out.write("<hr>");
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
