package com.bbs.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bbs.model.BbsBean;
import com.bbs.model.BbsDAO;
import com.controller.action.Action;
import com.controller.action.ActionForward;

public class BbsContAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		int num=Integer.parseInt(request.getParameter("num"));// 글번호
		int page=Integer.parseInt(request.getParameter("page"));// 페이지
		String state=request.getParameter("state"); // 상태 
		
		BbsDAO dao = new BbsDAO(); //db 객체 생성
		if(state.equals("cont")){ // 내용보기 일때
			// 조회수 증가
			dao.bbsHit(num);// 조회수를 증가하는 메서드 호출			
		}
		BbsBean bean = dao.getCont(num);
		// 번호에 해당하는 디비 내용 가져오기
		request.setAttribute("bbsbean",bean);//bean객체 저장
		request.setAttribute("page",page);//page수 저장
		
		// state 값에 따라서 각 페이지로 포워딩 됨
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		if(state.equals("cont")){ // 내용보기 일때
			forward.setPath("./bbs/bbs_cont.jsp");
		}else if(state.equals("edit")){ // 수정 일때 			
			forward.setPath("./bbs/bbs_edit.jsp");
		}else if(state.equals("delete")){ // 삭제 일때
			forward.setPath("./bbs/bbs_delete.jsp");
		}else if(state.equals("reply")){ // 답변 일때
			forward.setPath("./bbs/bbs_reply.jsp");
		}	
		return forward; // 각 페이지로 포워딩
	}

}
