package model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.DBConnection;

public class MemberDAO {
	   Connection con = null;
	   PreparedStatement pstmt = null;
	   ResultSet rs = null;
	   String sql = null;
	   
	   public MemberDAO(){
		   try {
			DBConnection db = new DBConnection();
			con = db.con;
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   
	   }
	   
	   public boolean insert(MemberDTO dto){
		   boolean result=false;
		   System.out.println("이쪽으로 오니?");
		  // System.out.printf("%s %s %s",id,passwd,name);
		   sql = "insert into jsp_member2 values(?,?,?,?,?,?)";
		   try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getJumin1());
			pstmt.setString(5, dto.getJumin2());
			pstmt.setString(6, dto.getEmail());
			
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
	   
}