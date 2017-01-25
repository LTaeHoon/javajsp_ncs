package com.file.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db.DBConnection;

public class FileUploadDAO {
	// 변수 선언
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;	
	public FileUploadDAO(){ // 생성자
		// dbcp 방식으로 db 연동 절차(3단계)
		try{
   	  		DBConnection db = new DBConnection();   	  		
   	  		con = db.con;    	  
   	    }catch(Exception e){
   		  e.printStackTrace();
   	    }				
	}// 생성자 end
	
	// DATA를 DB에 저장하는 메서드 작성
    public int insertFile(FileUploadDTO dto){
    	int re=-1;
    	try{
    		String sql="insert into fileUpload "+
    	      " values(?,?,?)";
    		pstmt = con.prepareStatement(sql);
    		pstmt.setString(1, dto.getWriter());
    		pstmt.setString(2, dto.getFiletype());
    		pstmt.setString(3, dto.getFilename());
    		re = pstmt.executeUpdate(); // insert문 실행
    	}catch(Exception e){
    		e.printStackTrace();
    	}
    	return re;
    }
    
	// 테이블 목록 보기
	public List<FileUploadDTO> getFileList() {
		List<FileUploadDTO> list =
				new ArrayList<FileUploadDTO>();
		try{
			String sql="select * from fileUpload";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				FileUploadDTO bean = new
						     FileUploadDTO();
				bean.setWriter(rs.getString("writer"));
				bean.setFiletype(rs.getString("filetype"));
				bean.setFilename(rs.getString("filename"));
				list.add(bean);
			}
			pstmt.close(); rs.close(); con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}

}
