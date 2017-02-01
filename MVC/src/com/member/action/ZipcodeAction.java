package com.member.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.action.Action;
import com.controller.action.ActionForward;
import com.member.model.MemberDAO;

public class ZipcodeAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// 사용자가 입력한 동을 대상으로 zipcode 테이블에 조회
		request.setCharacterEncoding("UTF-8");
		String dong = request.getParameter("dong").trim();
		
		// DB 연동 객체 생성
		MemberDAO dao = new MemberDAO();
		List zipcodeList = 
		   dao.searchZipcode(dong); // 우편번호 검색 메서드 호출
		request.setAttribute("zipcodelist",zipcodeList);
		request.setAttribute("dong", dong);
		
		// view page 포워딩
		ActionForward forward = new ActionForward();
		forward.setRedirect(false); // *.jsp 이동
		forward.setPath("./member/member_zipcode.jsp");
		
		return forward; // 실제 포워딩
	}

}
