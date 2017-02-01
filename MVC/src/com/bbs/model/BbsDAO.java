package com.bbs.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db.DBConnection;

public class BbsDAO {

	Connection con=null;
	PreparedStatement pstmt=null;	
	ResultSet rs=null;
	String sql=null;
	
	public BbsDAO(){
		/* 커넥션 풀 설정 */
		try {
			DBConnection db = new DBConnection();
			con = db.con;
		} catch (Exception e) {
			e.printStackTrace();
		}
	} // constructor end
	
	/* 자료실 저장 메서드 */
	public int insertBbs(BbsBean bbsbean) {
		int result=-1;		
		try{
			sql="select max(bbs_num) from bbs";
			// max() 함수는 최대 글번호값을 가져온다.
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery(); // select문 실행
			int num=0;
			if(rs.next()){ //bbs_num이 있는 경우
				num=rs.getInt(1)+1;	
				// select문의 첫번째 필드값
			}else{ // 검색 결과가 없는 경우
				num=1;  // 처음 레코드 글번호값 지정
			}
			sql = "insert into bbs "
			 + " values(?,?,?,?,?,?,?,?,?,?,sysdate)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);// 글번호값 배정
			pstmt.setString(2,bbsbean.getBbs_name());
			pstmt.setString(3,bbsbean.getBbs_pass());
			pstmt.setString(4,bbsbean.getBbs_subject());
			pstmt.setString(5,bbsbean.getBbs_content());
			pstmt.setString(6,bbsbean.getBbs_file());
			pstmt.setInt(7,num); // 답변글 그룹번호
			pstmt.setInt(8,0); // 답변글 깊이번호
			pstmt.setInt(9,0); // 답변글 순서번호
			pstmt.setInt(10,0);// 조회수
			result = 
			pstmt.executeUpdate(); //insert문 실행
			rs.close(); pstmt.close(); con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;		
      }
	
	/*총 레코드 수*/
	public int getListCount() {
        int count=0;
        try{
        	sql="select count(*) from bbs";
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
	public List<BbsBean> getBbsList(int page, int limit) {
		List<BbsBean> bbslist=new ArrayList<BbsBean>();
		int startrow=(page-1)*10+1; //현재페이지에서 시작행
		int endrow=page*limit;     // 현재페이지에서 끝행
		try{
			// 쿼리문 수정한 부분(서브쿼리 이용)
			sql ="select * from (select bbs.*, rownum as rnum "
				 + " from (select * from bbs order by bbs_re_ref desc, bbs_re_seq asc) bbs)" 
				 + " where rnum >=? and rnum<=?"; 
		    
		    pstmt=con.prepareStatement(sql);
		    pstmt.setInt(1,startrow);
		    pstmt.setInt(2,endrow); 

		    rs=pstmt.executeQuery();//쿼리문 실행
		    while(rs.next()){//레코드가 있을동안 반복
		    	BbsBean bbsbean=new BbsBean();
		    	bbsbean.setBbs_num(rs.getInt("bbs_num"));//글번호
		    	bbsbean.setBbs_name(rs.getString("bbs_name"));//글쓴이
		    	bbsbean.setBbs_subject(rs.getString("bbs_subject"));
		    	//글제목
		    	bbsbean.setBbs_content(rs.getString("bbs_content"));
		    	//글내용
		    	bbsbean.setBbs_file(rs.getString("bbs_file"));
		    	//이진파일명
		    	bbsbean.setBbs_re_ref(rs.getInt("bbs_re_ref"));
		    	//답변글 그룹번호
		    	bbsbean.setBbs_re_lev(rs.getInt("bbs_re_lev"));
		    	//답변글 위치번호
		    	bbsbean.setBbs_re_seq(rs.getInt("bbs_re_seq"));
		    	//답변글 순서번호
		    	bbsbean.setBbs_readcount(rs.getInt("bbs_readcount"));
		    	//조회수
		    	bbsbean.setBbs_date(rs.getString("bbs_date").substring(0,10));
		    	//0에서 10미만 사이의 년월일 반환
		    	bbslist.add(bbsbean);//컬렉션에 요소값 저장		    	
		    }
		    rs.close(); pstmt.close(); con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return bbslist;
	}
	/* 조회수 증가 */
	public void bbsHit(int num) {
		try{
			sql="update bbs set "
			+ " bbs_readcount=bbs_readcount+1"
			+ " where bbs_num=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, num);// 글번호 배정
			pstmt.executeUpdate(); //update문 실행
			pstmt.close(); //con.close();					
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	/* 자료실 내용 가져오기 */
	public BbsBean getCont(int num) {
		BbsBean bbs =null;
		try{
			sql="select * from bbs where bbs_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,num);
			rs = pstmt.executeQuery();
			if(rs.next()){
				bbs = new BbsBean(); // 빈 객체 생성
				bbs.setBbs_num(rs.getInt("bbs_num"));
				bbs.setBbs_name(rs.getString("bbs_name"));
				bbs.setBbs_subject(rs.getString("bbs_subject"));
				bbs.setBbs_content(rs.getString("bbs_content"));
				bbs.setBbs_file(rs.getString("bbs_file"));
				bbs.setBbs_re_ref(rs.getInt("bbs_re_ref"));
				bbs.setBbs_re_lev(rs.getInt("bbs_re_lev"));
				bbs.setBbs_re_seq(rs.getInt("bbs_re_seq"));
				bbs.setBbs_readcount(rs.getInt("bbs_readcount"));
				bbs.setBbs_date
				(rs.getString("bbs_date").substring(0,10));
				bbs.setBbs_pass(rs.getString("bbs_pass"));
				pstmt.close(); rs.close(); con.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return bbs; // 빈 객체 리턴
	}
	/* 자료실 수정 */
	public void bbsEdit(BbsBean bbsbean) {
		sql="update bbs set bbs_name=?,bbs_subject=?,"
		+ " bbs_content=?,bbs_file=? where bbs_num=?";
		
		try{
			DBConnection db = new DBConnection();
			con = db.con;
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,bbsbean.getBbs_name()); // 이름
			pstmt.setString(2,bbsbean.getBbs_subject());//제목
			pstmt.setString(3,bbsbean.getBbs_content());//내용
			pstmt.setString(4,bbsbean.getBbs_file()); // 파일
			pstmt.setInt(5,bbsbean.getBbs_num()); // 번호
			pstmt.executeUpdate();// sql문 실행
			
			pstmt.close(); con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	/* 자료실 삭제 */
	public void bbsDelete(int bbs_num) {
		
		try{
			DBConnection db = new DBConnection();
			con = db.con;
			sql="delete from bbs where bbs_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,bbs_num);//글번호 배정
			pstmt.executeUpdate(); // delete문 실행
			pstmt.close(); con.close();
		}catch(Exception e){
			e.printStackTrace();
		}		
	}
	
	/* 답변글 저장 */
	public void bbsReply(BbsBean bbsbean) {
       int num=0;
       int re_ref=bbsbean.getBbs_re_ref();// 답변글 글그룹번호
       int re_lev=bbsbean.getBbs_re_lev(); //답변글 위치번호
       int re_seq=bbsbean.getBbs_re_seq();//답변글 순서번호
       
       try{
    	sql="select max(bbs_num) from bbs";
    	//max 함수로 글번호 최대값을 가져옴
    	pstmt=con.prepareStatement(sql);
    	rs=pstmt.executeQuery();//쿼리문 실행
    	if(rs.next()){
    		num=rs.getInt(1)+1;//최대글번호+1
    	}else{
    		num=1;
    	}
    	// 답변글 순서 변경(증가) 
    	sql="update bbs set bbs_re_seq=bbs_re_seq+1 where "
    	+" bbs_re_ref=? and bbs_re_seq>?";
    	pstmt=con.prepareStatement(sql);
    	pstmt.setInt(1,re_ref); //답변글 글그룹번호
    	pstmt.setInt(2,re_seq);//답변글 순서번호
    	pstmt.executeUpdate();
    	
    	re_lev=re_lev+1;//답변글 깊이 1증가
    	re_seq=re_seq+1;//답변글 순서 1증가    	
    	
    	// 답변글 삽입(1씩 증가된 깊이, 순서 삽입) 
    	sql="insert into bbs values(?,?,?,?,?,?,?,?,?,?,sysdate)";
    	pstmt=con.prepareStatement(sql);
    	pstmt.setInt(1,num);
    	pstmt.setString(2,bbsbean.getBbs_name());
    	pstmt.setString(3,bbsbean.getBbs_pass());
    	pstmt.setString(4,bbsbean.getBbs_subject());
    	pstmt.setString(5,bbsbean.getBbs_content());
    	pstmt.setString(6,"");//이진파일을 첨부하지않음
    	pstmt.setInt(7,re_ref);//답변글 그룹번호(원글 번호값)
    	// 현재 답변글 그룹번호로 그룹화(위치,순서번호)
    	pstmt.setInt(8,re_lev);//답변글 위치번호
    	pstmt.setInt(9,re_seq);//답변글 순서번호
    	pstmt.setInt(10,0);//조회수     	
    	pstmt.executeUpdate();//쿼리문 실행
    	
    	rs.close(); pstmt.close(); con.close();
       }catch(Exception e){
    	   e.printStackTrace();
       }
    }	
	

}


