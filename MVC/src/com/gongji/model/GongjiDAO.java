package com.gongji.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



import db.DBConnection;

public class GongjiDAO {
	private Connection con=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;	
	private String sql=null;
	
	public GongjiDAO(){
		try{
			DBConnection db = new DBConnection();
			con = db.con; // 커넥션 가져오기
		}catch(Exception e){
			e.printStackTrace();
		}	
	}
	
	
	/*총 레코드 수*/
	public int getListCount() {
        int count=0;
        try{
        	sql="select count(*) from gongji";
        	pstmt=con.prepareStatement(sql);
        	rs=pstmt.executeQuery(); //쿼리문 실행
        	if(rs.next()){ //레코드가 있다면
        		count=rs.getInt(1); //총 레코드 수 저장
        		// getInt(1) : 첫번째 검색된 필드값 가져오기
        	}
        	rs.close(); pstmt.close(); //con.close();
        }catch(Exception e){
        	e.printStackTrace();
        }
		return count;
	}
    /* 자료실 목록 */
	public List<GongjiBean> getGongjiList(int page, int limit) {
		List<GongjiBean> gongjilist=new ArrayList<GongjiBean>();
		int startrow=(page-1)*10+1; //현재페이지에서 시작행
		int endrow=page*limit;     // 현재페이지에서 끝행
		try{
			// 쿼리문 수정한 부분(서브쿼리 이용)
			sql ="select * from (select gongji.*, rownum as rnum "
				 + " from (select * from gongji order by gongji_no desc) gongji)" 
				 + " where rnum >=? and rnum<=?"; 
		    
		    pstmt=con.prepareStatement(sql);
		    pstmt.setInt(1,startrow);
		    pstmt.setInt(2,endrow); 

		    rs=pstmt.executeQuery();//쿼리문 실행
		    while(rs.next()){//레코드가 있을동안 반복
		    	GongjiBean gongjibean=new GongjiBean();
		    	gongjibean.setGongji_no(rs.getInt("gongji_no"));//글번호
		    	gongjibean.setGongji_name(rs.getString("gongji_name"));//글쓴이
		    	gongjibean.setGongji_title(rs.getString("gongji_title"));
		    	//글제목
		    	gongjibean.setGongji_cont(rs.getString("gongji_cont"));
		    	//글내용
		    	gongjibean.setGongji_hit(rs.getInt("gongji_hit"));
		    	//조회수
		    	gongjibean.setGongji_regdate(rs.getString("gongji_regdate").substring(0,10));
		    	//0에서 10미만 사이의 년월일 반환
		    	gongjilist.add(gongjibean);//컬렉션에 요소값 저장		    	
		    }
		    rs.close(); pstmt.close(); con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return gongjilist;
	}
	/* 조회수 증가 */
	public void gongjiHit(int num) {
		try{
			sql="update gongji set "
			+ " gongji_hit=gongji_hit+1"
			+ " where gongji_no=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, num);// 글번호 배정
			pstmt.executeUpdate(); //update문 실행
			pstmt.close(); //con.close();					
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	/* 자료실 내용 가져오기 */
	public GongjiBean getCont(int num) {
		GongjiBean gongjibean =null;
		try{
			sql="select * from gongji where gongji_no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,num);
			rs = pstmt.executeQuery();
			if(rs.next()){
				gongjibean = new GongjiBean(); // 빈 객체 생성
				gongjibean.setGongji_no(rs.getInt("gongji_no"));
				gongjibean.setGongji_name(rs.getString("gongji_name"));
				gongjibean.setGongji_title(rs.getString("gongji_title"));
		    	//글제목
		    	gongjibean.setGongji_cont(rs.getString("gongji_cont"));
		    	//글내용
		    	gongjibean.setGongji_hit(rs.getInt("gongji_hit"));
		    	//조회수
		    	gongjibean.setGongji_regdate(rs.getString("gongji_regdate").substring(0,10));
				
				pstmt.close(); rs.close(); con.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return gongjibean;
	}
	
	
}
