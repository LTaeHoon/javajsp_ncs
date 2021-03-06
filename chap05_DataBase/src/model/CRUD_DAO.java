package model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import db.DBConnection;

/*
 * DB 데이터에 접근하는 객체 생성 : xxxxPro.jsp에서 db 연동 및 작업 통합 
 */
public class CRUD_DAO { //db 연동
   Connection con = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   String sql = null;
   
   public CRUD_DAO(){ //con 객체 생성
	try {
		DBConnection db = new DBConnection();
		con = db.con; //db 연동 객체 생성
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
   }//생성자 end
   
   /* select,insert,update,delete 작업:method 작성*/
   public List<CRUD_DTO> select(){ //전체 table 목록 반환
	   List<CRUD_DTO> list = new ArrayList<CRUD_DTO>();
	   sql = "select * from member1"; //id,passwd,name,reg_date
	   try{
		   pstmt = con.prepareStatement(sql);
		   rs=pstmt.executeQuery(); // 레코드 저장
		   while(rs.next()){
			   CRUD_DTO dto = new CRUD_DTO();
			   //dto의 setter 이용 객체에 저장
			   dto.setId(rs.getString("id"));
			   dto.setPasswd(rs.getString("passwd"));
			   dto.setName(rs.getString("name"));
			   dto.setReg_date(rs.getString("reg_date").substring(0,10));
			   //dto(id,psswd,name,reg_date)
			   list.add(dto); //[0] = dto(id,psswd,name,reg_date) 
		   }
	   rs.close();pstmt.close();con.close();
	   }catch(Exception e){
		   e.printStackTrace();
	   }
	   return list;
   }//select end;
   
   public boolean insert(String id,String passwd,String name){
	   boolean result=false;
	   System.out.println("이쪽으로 오니?");
	   System.out.printf("%s %s %s",id,passwd,name);
	   sql = "insert into member1 values(?,?,?,sysdate)";
	   try {
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		pstmt.setString(3, name);
		int re =pstmt.executeUpdate();
		if(re>=1){
			result = true;
		}else{
			result =  false;
		}
	   pstmt.close();con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   System.out.println(result);
	   return result;
   }//insert end
   
   public boolean update(String id,String passwd,String name){
	   boolean result=false;
	   System.out.printf("%s %s %s",id,passwd,name);
	   sql="select id,passwd from member1 where id=? and passwd=?";
	   try {
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		rs = pstmt.executeQuery();
		if(rs.next()){ //id와 비번이 맞은 경우
			sql = "update member1 set name=? where id=?";
 	 		pstmt = con.prepareStatement(sql);
 	 		pstmt.setString(1,name);
 	 		pstmt.setString(2,id);
 	 		int re = pstmt.executeUpdate();
 	 		if(re>=1){
 	 			result = true;
 	 		}else{
 	 			result = false;
 	 		}
		}
		rs.close();pstmt.close();con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return result;
	   
   }
   public boolean delete(String id,String passwd){
	   boolean result=false;
	   
	   sql="select id,passwd from member1 where id=? and passwd=?";
	   try {
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		rs = pstmt.executeQuery();
		if(rs.next()){ //id와 비번이 맞은 경우
			sql = "delete from member1 where id=? and passwd=?";
 	 		pstmt = con.prepareStatement(sql);
 	 		pstmt.setString(1,id);
 	 		pstmt.setString(2,passwd);
 	 		int re = pstmt.executeUpdate();
 	 		if(re>=1){
 	 			result = true;
 	 		}else{
 	 			result = false;
 	 		}
		}
		rs.close();pstmt.close();con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return result;
	   
   }
	

}
