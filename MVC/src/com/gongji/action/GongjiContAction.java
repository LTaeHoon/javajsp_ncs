package com.gongji.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.action.Action;
import com.controller.action.ActionForward;
import com.gongji.model.GongjiBean;
import com.gongji.model.GongjiDAO;

public class GongjiContAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 특정 공지사항 내용을 보여주는 컨트롤러
		int num=Integer.parseInt(request.getParameter("num"));//글번호 
		int page=Integer.parseInt(request.getParameter("page"));//페이지번호
		String state = request.getParameter("state"); //상태
		
		GongjiDAO dao = new GongjiDAO(); //db 객체 생성
		if(state.equals("cont")){
			dao.gongjiHit(num); //해당 글에 조회수 올리는 메서드 호출
		}
		//해당 글의 내용 가져오기
		GongjiBean gongjibean = dao.getCont(num);
		
		request.setAttribute("gongjibean", gongjibean); //bean 객체 저장
		request.setAttribute("page", page); //page 수 저장
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./gongji/gongji_cont.jsp");
			
		return forward; //페이지로 포워딩
	}

}
