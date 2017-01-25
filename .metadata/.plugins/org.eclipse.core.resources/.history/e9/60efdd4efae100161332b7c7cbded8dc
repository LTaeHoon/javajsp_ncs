package join;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db.DBConnection;

public class JoinDAO {
	// 멤버변수 - db 연동에 필요한 변수
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	public JoinDAO(){ // 생성자
		try{
   	  		DBConnection db = new DBConnection();
   	  		con = db.con;    	  
   	    }catch(Exception e){
   		  e.printStackTrace();
   	    }	
	} // 생성자 end
	
	/* 작업은 method 단위로 작성 */	
	public List<JoinDTO> studentfind(String name){
		List<JoinDTO> list =
				new ArrayList<JoinDTO>();
		try{
			String sql = 
				" select d.dept_code, s.num,"+ 
		        " s.name, s.gender, d.dept_name"+
			    " from department d, student s" +
		        " where d.dept_code=s.dept_code" +
			    " and s.name like ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+name+"%");
			rs = pstmt.executeQuery(); //select문 실행
			while(rs.next()){
				JoinDTO dto = new JoinDTO();				
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setGender(rs.getString("gender"));
				dto.setDept_code(rs.getString("dept_code"));
				dto.setDept_name(rs.getString("dept_name"));
				list.add(dto); // 레코드 원소에 저장
			}
			rs.close(); pstmt.close(); con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return list; // list 객체(검색레코드) 반환
	}

}
