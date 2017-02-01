package com.admin.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.action.Action;
import com.controller.action.ActionForward;
import com.member.model.MemberDAO;

public class AdminZipcodeAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// 우편번호를 검색을 위해서 DAO 메소드를 호출한 후 
		// 결과를 view 페이지로 포워딩 시키는 액션 클래스
		request.setCharacterEncoding("UTF-8");
		// 사용자가 입력한 동을 파라미터로 받는다.
		String dong= request.getParameter("dong").trim();
		// 읍면동 저장
		/* DAO 메소드 호출 */
		MemberDAO dao = new MemberDAO(); // 디비 연동 객체 생성
		// 우편번호를 검색하는 메소드 호출
		List zipcode = dao.searchZipcode(dong);
		// 검색된 결과를 List 타입의 변수로 받는다.
		
		/* view 페이지로 포워딩 */
		// 검색된 주소를 "zipcodelist"키에 저장한다.
		request.setAttribute("zipcodelist", zipcode);
		// 사용자 입력한 동일 "dong"에 저장한다.
		request.setAttribute("dong",dong);
		// 포워드 객체 생성
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		// 포워딩되 view 페이지
		forward.setPath("./admin/admin_zipcode.jsp");
		return forward; // 실제 포워
	}

}


