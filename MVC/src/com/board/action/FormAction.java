package com.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.action.Action;
import com.controller.action.ActionForward;

public class FormAction implements Action {
	//Action = Controller
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		// 1. 사용자 파라미터 받기
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		// 2. DB 연동 / 메서드 호출/리턴(생략)
		
		// 3. 키 -> view page 포워딩		
		request.setAttribute("name", name);
		request.setAttribute("age", age);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("board/board_Result.jsp");
		return forward;
	}

}
