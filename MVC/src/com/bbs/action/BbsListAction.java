package com.bbs.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bbs.model.BbsBean;
import com.bbs.model.BbsDAO;
import com.controller.action.Action;
import com.controller.action.ActionForward;

public class BbsListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// 자료실의 목록을 보여주는 컨트롤러 클래스
		BbsDAO bbsdao = new BbsDAO(); // 디비 연동 객체 생성
		
		int page=1;     // 현재 보여지는 페이지 수 
		int limit = 10; // 한 페이지에 보여지는 목록수 지정(10개)
		
		if(request.getParameter("page") != null){
			// 넘어온 페이지 번호값이 있으면 true
			page=Integer.parseInt(request.getParameter("page"));
			// 쪽번호를 정수형으로 변환하여 저장
		}
		int listcount = bbsdao.getListCount(); // 총레코드 수 
		List<BbsBean> bbslist = bbsdao.getBbsList(page, limit);
		// 게시물 목록을 받아온다.		
		int maxpage = (int)((double)listcount/limit+0.95);
		// 총페이지 수 구하는 수식
		int startpage = (((int)((double)page/10+0.9))-1)*10+1;
		// 시작 페이지 구하는 수식
		int endpage = maxpage;
		if(endpage > startpage+10-1) endpage = startpage+10-1;
		
		request.setAttribute("page",page); // 쪽번호 저장
		request.setAttribute("maxpage", maxpage); //총페이지 수 저장
		request.setAttribute("startpage", startpage);//시작페이지
		request.setAttribute("endpage", endpage); // 끝 페이지
		request.setAttribute("listcount",listcount); // 총레코드 수
		request.setAttribute("bbslist",bbslist); // 게시물 목록
		request.setAttribute("limit", limit); // 페이지 당 목록 수
		/* view page 포워딩 */
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./bbs/bbs_list.jsp");
		return forward; // 실제 포워딩
	}

}




