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

public class BbsEditOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// 한글 인코딩 방식 지정
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		BbsBean bbsbean = new BbsBean();
		BbsDAO bbsdao = new BbsDAO();
		ActionForward forward = new ActionForward();
		
		// 이진파일 업로드 폴더 경로	
		String saveFolder="C:\\NCS\\jsp\\workspace(jsp)\\MVC\\WebContent\\upload";
		// 이진파일 업로드 최대 크기(5MB)-크기 지정
		int fileSize=5*1024*1024;	
		// 이진파일을 업로드 시키는 JAVA 클래스 객체 생성
		MultipartRequest multi=null;
		multi=new MultipartRequest(request,saveFolder,fileSize,"UTF-8");
		/* 이진파일 업로드 객체를 이용하여 회원정보를 파라미터로 받음 */
		int bbs_num=Integer.parseInt(
				       multi.getParameter("num").trim());
		int page=Integer.parseInt(
				       multi.getParameter("page").trim());
		String bbs_name=multi.getParameter("bbs_name").trim();
		String bbs_pass=multi.getParameter("bbs_pass").trim();
		String bbs_subject=multi.getParameter("bbs_subject").trim();
		String bbs_content=multi.getParameter("bbs_content").trim();
		// DAO 클래스의 DB 내용을 가져오는 메소드 호출
		bbsbean = bbsdao.getCont(bbs_num); 
		PrintWriter out = response.getWriter(); // 출력 스트림 객체 
		
		if(!bbsbean.getBbs_pass().equals(bbs_pass)){//비번이 다른 경우
			out.println("<script>");
			out.println("alert('비번이 다릅니다')");
			out.println("history.go(-1)"); // 이전페이지로 이동
			out.println("</script>");
		}else{ // 비번이 같은 경우
			// 업로드 파일(첨부파일)을 File 클래스 타입 변수로 저장
			File UpFile=multi.getFile("bbs_file");				   
						   
			if(UpFile != null){ //새로운 파일로 수정한 경우 
				String fileName=UpFile.getName();
				// 파일 객체 생성
				File DelFile = new 
					 File(saveFolder+bbsbean.getBbs_file());
				// 기존의 업로드 파일을 삭제한다.
				if(DelFile.exists()){ // 기존 파일이 존재하면
					DelFile.delete(); // delete()메소드 파일 삭제
				}								
			    Calendar c =Calendar.getInstance();// 날짜/시간 객체 생성			 
			    int year=c.get(Calendar.YEAR); // 년도 리턴
			    int month=c.get(Calendar.MONTH)+1; // 월 리턴(1월 0)
			    int date=c.get(Calendar.DATE); // 일 리턴
			    // 새로운 폴더 생성(upload/2013-12-5) 
			    String homedir=saveFolder+"/"+year+"-"+month+"-"+date;		     
			    File path1=new File(homedir);
				 if(!(path1.exists())){path1.mkdir();}
					    // 해당 폴더가 존재하지 않으면 폴더를 생성하라
					 Random r=new Random();
					 int random=r.nextInt(100000000);
					 //1억사이의 정수형 난수 발생
					     
					 /****확장자 구하기 시작 ****/
					 int index = fileName.lastIndexOf(".");
					 String fileExtension = 
							 fileName.substring(index + 1);
				     /****확장자 구하기 끝 ***/
					     
					 // 새로운 파일명 저장(member+년+월+일+난수정수.jsp)
					 String refileName="bbs"+year+month+date+random+
					    		 "."+fileExtension;
					 String fileDBName="/"+year+"-"+month+"-"+date+"/"+refileName;
					 UpFile.renameTo(new File(homedir+"/"+refileName));		         
					 // 업로드 파일을 빈 클래스에 저장 
					 bbsbean.setBbs_file(fileDBName); // 새로운 파일로 수정 	
		      }	
		// 데이터 수정	: 업로드 파일 없으면 기존 파일 유지됨 		
		bbsbean.setBbs_name(bbs_name); // 글쓴이		
		bbsbean.setBbs_subject(bbs_subject); // 제목
		bbsbean.setBbs_content(bbs_content); // 내용
		bbsbean.setBbs_num(bbs_num);  //번호
		
		/* DAO 클래스의 수정 메소드 호출 */		
		bbsdao.bbsEdit(bbsbean);
		
		forward.setRedirect(true);
		forward.setPath("bbs_cont.do?num="+bbs_num+"&page="+page+"&state=cont");
		return forward;
	  }
		return null;
	}	

}


