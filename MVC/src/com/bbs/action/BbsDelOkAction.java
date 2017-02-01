package com.bbs.action;

import java.io.File;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bbs.model.BbsBean;
import com.bbs.model.BbsDAO;
import com.controller.action.Action;
import com.controller.action.ActionForward;

public class BbsDelOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		BbsDAO dao = new BbsDAO(); // DB 연동객체 생성
		// view page에 넘긴 파라미터 받기
		// 히든으로 넘어온num과 page 번호 받기
		int bbs_num = 
	       Integer.parseInt(request.getParameter("num"));
		int page = 
		   Integer.parseInt(request.getParameter("page"));
		// 사용자가 입력한 비번 받기
		String pwd = request.getParameter("pwd").trim();
		
		// upload 폴더에 업로드된 파일까지 삭제
		String up="C:\\NCS\\jsp\\workspace(jsp)\\MVC\\WebContent\\upload";
		BbsBean bbs = dao.getCont(bbs_num);
		// 디비에서 번호에 해당하는 디비 내용을 가져온다.
		String fname=bbs.getBbs_file(); // 파일명
		
		if(!bbs.getBbs_pass().equals(pwd)){
			//비번이 틀린 경우
			out.println("<script>");
			out.println("alert('비번이 다릅니다.')");
			out.println("history.back()");
			out.println("</script>");
		}else{ // 비번이 같은 경우
			dao.bbsDelete(bbs_num); //레코드 삭제 메서드
			if(fname!=null){ // 업로드 파일이 있는 경우
				File file = new File(up+fname);
				file.delete();// 기존이진파일 제거				
			}
			// page번호를 넘겨서 자료실 목록보기으로 이동
			response.sendRedirect("bbs_list.do?page="+page);
		}		
		return null;
	}

}





