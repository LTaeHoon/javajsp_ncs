package com.bbs.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bbs.model.BbsBean;
import com.bbs.model.BbsDAO;
import com.controller.action.Action;
import com.controller.action.ActionForward;

public class BbsReplyOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		BbsBean bbsbean = new BbsBean();
		BbsDAO dao = new BbsDAO();
		
		// 파라미터 데이터 받기
		String bbs_name 
		= request.getParameter("bbs_name").trim();
		String bbs_pass 
		= request.getParameter("bbs_pass").trim();
		String bbs_subject 
		= request.getParameter("bbs_subject").trim();
		String bbs_content 
		= request.getParameter("bbs_content").trim();
		// 히든 데이터 받기
		int bbs_num = 
		Integer.parseInt(request.getParameter("bbs_num"));
		int bbs_re_ref = 
		Integer.parseInt(request.getParameter("bbs_re_ref"));
		int bbs_re_lev = 
		Integer.parseInt(request.getParameter("bbs_re_lev"));
		int bbs_re_seq = 
	    Integer.parseInt(request.getParameter("bbs_re_seq"));
		int page = 
		Integer.parseInt(request.getParameter("page")); 		
		// 빈에 데이터를 저장한다.
		bbsbean.setBbs_num(bbs_num);// 글번호
		bbsbean.setBbs_re_ref(bbs_re_ref);//답변글그룹번호
		bbsbean.setBbs_re_lev(bbs_re_lev);//답변글깊이번호
		bbsbean.setBbs_re_seq(bbs_re_seq);//답변글순서번호
		bbsbean.setBbs_name(bbs_name);//작성자
		bbsbean.setBbs_pass(bbs_pass);//비번
		bbsbean.setBbs_subject(bbs_subject);//제목
		bbsbean.setBbs_content(bbs_content);//내용
		
		// DAO의 답변글 메서드 호출
		dao.bbsReply(bbsbean); // 빈 객체를 넘김
		
		// 해당 page 번호로 자료실 목록 보기 호출
		response.sendRedirect("bbs_list.do?page="+page);
		return null;
	}

}
