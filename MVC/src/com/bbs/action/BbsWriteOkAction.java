package com.bbs.action;

import java.io.File;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bbs.model.BbsBean;
import com.bbs.model.BbsDAO;
import com.controller.action.Action;
import com.controller.action.ActionForward;
import com.oreilly.servlet.MultipartRequest;

public class BbsWriteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		BbsBean bbsbean = new BbsBean();
		String saveFolder="C:\\NCS\\jsp\\workspace(jsp)\\MVC\\WebContent\\upload";
		int fileSize=5*1024*1024; // 5MB(최대 업로드 크기)
		// 이진파일 업로드를 위한 객체 생성
		MultipartRequest multi=null;
		multi= new 
		MultipartRequest(request,saveFolder,fileSize,"UTF-8");
		String bbs_name
		  = multi.getParameter("bbs_name").trim();
		String bbs_pass
		  = multi.getParameter("bbs_pass").trim();
		String bbs_subject
		  = multi.getParameter("bbs_subject").trim();
		String bbs_content
		  = multi.getParameter("bbs_content").trim();
		File UpFile = multi.getFile("bbs_file");
		// 업로드 파일을 getFile()메서드로 받는다.
		// getFile()은 업로드 파일을 대상으로 File객체 리턴
		if(UpFile!=null){ // 첨부한 파일이 있는 경우
			// getName()은 파일을 이름을 리턴
			//String fileName = UpFile.getName();
			// 날짜를 생성하는 객체 생성
			Calendar c= Calendar.getInstance();
			int year = c.get(Calendar.YEAR); // 년도
			int month = c.get(Calendar.MONTH)+1; //월
			int date = c.get(Calendar.DATE); // 일
			// upload/2014-5-9 폴더 생성
			String homedir=saveFolder+"/"+year+"-"+month+"-"+date;
			File path1 = new File(homedir);
			if(!(path1.exists())){ // 폴더가 존재하지 않으면
				path1.mkdir();  // 실제 폴더 생성
			}
			Random r = new Random(); // 난수 발생 
			int random = r.nextInt(100000000);
			// 1억 사이의 난수 정수 발생
			/**** 파일의 확장자 구하기 시작 ***/
			int index = UpFile.getName().lastIndexOf(".");
			String fileExtension =
				UpFile.getName().substring(index+1);	
			/**** 파일의 확장자 구하기 끝 ***/
			String refileName 
			 ="bbs"+year+month+date+random+"."+fileExtension;
			UpFile.renameTo(new File(homedir+"/"+refileName));
			// 새로운 폴더명과 파일명으로 파일을 갱신하다.
			String fileDBName =
		    	"/"+year+"-"+month+"-"+date+"/"+refileName;
			// db에 저장될 파일이름 지정
			bbsbean.setBbs_file(fileDBName); 
			// 빈에 파일명 저장
		}// if end
		bbsbean.setBbs_name(bbs_name);
		bbsbean.setBbs_pass(bbs_pass);
		bbsbean.setBbs_subject(bbs_subject);
		bbsbean.setBbs_content(bbs_content);
		
		// DAO 객체 생성
		BbsDAO dao = new BbsDAO();
		// 저장 메서드 호출
		int result = dao.insertBbs(bbsbean);
		ActionForward forward = new ActionForward();
		PrintWriter out = response.getWriter();
		if(result==1){
			// view page 포워딩			
			forward.setRedirect(true);
			forward.setPath("bbs_list.do"); //자료실 목록보기
		}else{
			out.println("<script>");
			out.println("alert('게시물 저장에 실패하였습니다.')");
			out.println("history.back()"); // 자료실 입력폼으로 
			out.println("</script>");
		}
	   return forward; // 실제 포워딩
	}

}
