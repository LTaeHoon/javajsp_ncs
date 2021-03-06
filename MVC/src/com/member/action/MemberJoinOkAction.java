package com.member.action;

import java.io.File;
import java.util.Calendar;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.action.Action;
import com.controller.action.ActionForward;
import com.member.model.MemberBean;
import com.member.model.MemberDAO;
import com.oreilly.servlet.MultipartRequest;

public class MemberJoinOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {		
		// 클라이언트와 서버측 한글 인코딩 처리
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		// 이진파일 업로드 폴더 경로	
		String saveFolder="C:/NCS/jsp/workspace(jsp)/MVC/WebContent/upload";
		// 이진파일 업로드 최대 크기(5MB)-크기 지정
		int fileSize=5*1024*1024;	
		// 이진파일을 업로드 시키는 JAVA 클래스 객체 생성
		MultipartRequest multi=null;
		multi=new MultipartRequest(request,saveFolder,fileSize,"UTF-8");
		/*
		 *  MultipartRequest는 이진파일 업로드 객체를 생성하는 클래스
		 *  첫번째 매개변수 : 사용자 폼에서 입력한 정보를 서버로 가져오는 역할
		 *  두번째 매개변수 : 이진파일 업로드 서버 경로(폴더 경로)
		 *  세번째 매개변수 : 이진파일 업로드 최대 크기
		 *  네번째 매개변수 : 언어 인코딩 방식
		 */
		/* 이진파일 업로드 객체를 이용하여 회원정보를 파라미터로 받음 */
		String member_id=multi.getParameter("member_id").trim();
		String member_pass=multi.getParameter("member_pass").trim();
		String member_name=multi.getParameter("member_name").trim();
		String member_nickname=
			   multi.getParameter("member_nickname").trim();
		String member_zip1=multi.getParameter("member_zip1").trim();
		String member_zip2=multi.getParameter("member_zip2").trim();
		String member_addr1=multi.getParameter("member_addr1").trim();
		String member_addr2=multi.getParameter("member_addr2").trim();		   
		// 업로드 파일(첨부파일)을 File 클래스 타입 변수로 저장
		File UpFile=multi.getFile("member_profilename");
		   
		// DTO, DAO, ActionForward 객체 생성  
		MemberDAO dao=new MemberDAO();
		MemberBean bean=new MemberBean();
		ActionForward forward=new ActionForward();
		   
		if(UpFile != null){ //첨부한 이진파일이 있다면			 
		     Calendar c =Calendar.getInstance();// 날짜/시간 객체 생성			 
		     int year=c.get(Calendar.YEAR); // 년도 리턴
		     int month=c.get(Calendar.MONTH)+1; // 월 리턴(1월 0)
		     int date=c.get(Calendar.DATE); // 일 리턴
		     // 새로운 폴더 생성(upload/2014-5-7 
		     String homedir=saveFolder+"/"+year+"-"+month+"-"+date;		     
		     File path1=new File(homedir);
		     if(!(path1.exists())){path1.mkdir();}
		     // 해당 폴더가 존재하지 않으면 폴더를 생성하라
		     
		     Random r=new Random();
		     int random=r.nextInt(100000000);
		     //1억사이의 정수형 난수 발생
		     
		     /****확장자 구하기 시작 ****/
		     int index = UpFile.getName().lastIndexOf(".");
		     // File 클래스의 getName()메소드는 업로드한 파일명으로 
		     // 가져오는 역할하고, lastIndexOf("문자")메소드에 의해서
		     // 지정한 문자의 위치 번호를 정수값으로 리턴 한다.
		     String fileExtension = 
		           UpFile.getName().substring(index + 1);
		     // index에 1를 더한 위치부터 나머지 끝까지 문자열을
		     // substring으로 지정하여 업로드 파일의 확장자를 획득한다. 
		     /****확장자 구하기 끝 ***/
		     
		     // 새로운 파일명 저장(member+년+월+일+난수정수.jsp)
		     String refileName="member"+year+month+date+random+
		    		 "."+fileExtension;
		     // db 테이블에 저장되는 파일명 형식
		     // /년-월-일/refileName
		     String fileDBName="/"+year+"-"+month+"-"+date+"/"+refileName;

		     UpFile.renameTo(new File(homedir+"/"+refileName));		         
		     // 업로드 파일을 빈 클래스에 저장한다. 
		     bean.setMember_profilename(fileDBName);		    
		   }		     
		     // 회원의 정보를 빈 클래스에 저장한다.
		     bean.setMember_id(member_id); 
		     bean.setMember_pass(member_pass);
		     bean.setMember_name(member_name);
		     bean.setMember_nickname(member_nickname);
		     bean.setMember_zip1(member_zip1);
		     bean.setMember_zip2(member_zip2);
		     bean.setMember_addr1(member_addr1);
		     bean.setMember_addr2(member_addr2);	         
		    
		     /* DAO 클래스의 메소드 호출 */
		     dao.insertMember(bean); //저장메서드 호출		     
		     
		     /* View 페이지 포워딩 */
			 forward.setRedirect(true); // 포워딩 경로 변경
			 forward.setPath("./member_Login.do"); // view 페이지
			 return forward; // 실제 view 페이지 이동			
			}
		}
