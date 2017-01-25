package com.file.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.file.model.FileUploadDAO;
import com.file.model.FileUploadDTO;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class FileUploadController
 */
@WebServlet("/upload.do")
public class FileUploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FileUploadController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// method="get" or method="post" 모두 처리
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		// 이진파일 업로드 폴더 경로
		String saveFolder = "C:\\NCS\\jsp\\workspace(jsp)\\chap09_FileUpload\\WebContent\\upload";
		// 이진파일 최대 크기
		int fileSize = 5 * 1024 * 1024; // 5MB 지정
		// 이진파일 업로드를 위한 객체 생성
		MultipartRequest multi = new MultipartRequest(request,saveFolder,fileSize,"UTF-8");
		String writer = multi.getParameter("writer");
		String filetype = multi.getParameter("fileType");
		File upload = multi.getFile("fileName");
		
		/* upload 파일 파일객체 수정(파일,폴더) */
		String fileName = null; // 업로드 파일명
		String reFileName = null; // 변경된 파일명
		PrintWriter out = response.getWriter();
		FileUploadDTO dto = new FileUploadDTO();
		FileUploadDAO dao = new FileUploadDAO();
		dto.setWriter(writer);// 작성자
		dto.setFiletype(filetype); // 파일 유형
		if (upload != null) { // 파일을 선택한 경우
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR); // 년
			int month = c.get(Calendar.MONTH) + 1; // 월
			int date = c.get(Calendar.DATE); // 일
			// 새로운 폴더 생성(upload/2014-09-25)
			String homedir = saveFolder + "/" + year + "-" + month + "-" + date;
			File path = new File(homedir);
			if (!path.exists()) {
				path.mkdirs(); // 실제 폴더 생성
			}
			// File 객체에서 파일명을 가져온다.
			fileName = upload.getName();
			// 파일명 변경 : 작성자_파일명;
			reFileName = writer + "_" + fileName;
			// 기존 파일 객체 수정(upload/2014-09-25/작성자_파일명)*/
			upload.renameTo(new File(homedir + "/" + reFileName));
			dto.setFilename(reFileName); // 수정된 이름
			int re = dao.insertFile(dto); // db 저장 메서드 호출
			if (re == 1) {
				// list 객체 리턴 받음
				List<FileUploadDTO> list = dao.getFileList();
				request.setAttribute("list", list);
				// view page 이동
				RequestDispatcher dis 
				  = request.getRequestDispatcher("view/fileUploadOutput.jsp"); 
				dis.forward(request, response);
			} else {
				out.println("<script>");
				out.println("alert('파일 업로드 실패!!')");
				out.println("history.back()");
				out.println("</script>");
			}
		} else {
			out.println("<script>");
			out.println("alert('파일 업로드 실패!!')");
			out.println("history.back()");
			out.println("</script>");
		}
	}

}
