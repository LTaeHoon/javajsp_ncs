﻿package com.member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import db.DBConnection;

// DAO 클래스 = 디비 연동 클래스
public class MemberDAO {
	// 디비 연동과 쿼리문 수행을 위한 클래스의 참조변수 선언
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = null;

	public MemberDAO() { // 생성자
		/* 커넥션 풀 설정 */
		try {
			DBConnection db = new DBConnection();
			con = db.con;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/* 디비 작업은 메소드 단위로 작성한다. */
	/* 아이디 중복 체크 */
	public int checkMemberId(String id){
		int re=-1; // 아이디 중복 여부 결정
		try{
			//con=dbs.getConnection();
			sql="select member_id from member "
				+ " where member_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();			
			if(rs.next()){
				re=1;  // 검색된 id가 있는 경우
			}
			System.out.println(re);
			con.close(); pstmt.close(); rs.close();			
		}catch(Exception e){
			e.printStackTrace();
		}
		return re;  // re값을 리턴한다.
		
	}
	/* 우편번호 검색 메소드 */
	public List searchZipcode(String dong) {
		List zipcodeList = new ArrayList();
		
		try{
			//con = ds.getConnection(); // 디비 연동
			sql = "select * from zipcode where dong like ?";
			// like는 포함문자열을 검색하는 키워드이다.
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+dong+"%");
			// %동% 형태로 사용자가 입력한 동을 포함한 레코드를 검색한다.
			rs=pstmt.executeQuery();
			while(rs.next()){ // 검색된 동이 있는 경우
				// 검색된 db의 레코드를 대상으로 필드 단위로 가져온다.
				String zipcode=rs.getString("zipcode"); // 우편번호
				String sido = rs.getString("sido"); // 시도
				String gugun = rs.getString("gugun"); // 구군
				String dong2 = rs.getString("dong"); // 읍면동
				String bunji = rs.getString("bunji"); // 번지
				// 번지를 뺀 주소저장
				String addr = sido+" "+gugun+" "+dong2;
				// 번지를 포함한 주소
				String addr2 = sido+" "+gugun+" "+dong2+" "+bunji;
								
				// List 컬렉션에 요소를 레코드 형태로 저장한다.
				zipcodeList.add(zipcode+","+addr+","+addr2);
			}
			rs.close(); pstmt.close(); con.close();
		}catch(Exception e){
			e.printStackTrace();
		}		
		return zipcodeList; // 리스트를 호출한 곳으로 리턴한다.
	}
	/* 비번 찾기 */
	public MemberBean findpwd(String pwd_id, String pwd_name) {
		// 사용자의 id와 name으로 비번 조회 메서드
		MemberBean member=null;
		try{
			sql="select member_pass from member "
			 +  " where member_id=? and member_name=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, pwd_id);
			pstmt.setString(2, pwd_name);
			rs = pstmt.executeQuery();
			if(rs.next()){
				member = new MemberBean(); // 빈 객체
				// pass 값을 빈에 저장 
				member.setMember_pass
				   (rs.getString("member_pass"));				
			}
			rs.close(); pstmt.close(); con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return member;// 빈 객체 리턴(사용자 비번저장)
	}
	/* 회원가입 정보 저장 메서드*/
	public void insertMember(MemberBean bean) {
		// TODO Auto-generated method stub
		try{
			sql="insert into MEMBER "
		+ " (member_id,member_pass,member_name,"
		+ " member_nickname,member_zip1,member_zip2,"
		+ " member_addr1,member_addr2,"
		+ " member_profilename,member_regdate,"
		+ " member_state)"
		+ " values(?,?,?,?,?,?,?,?,?,sysdate,1)";
			pstmt = con.prepareStatement(sql);
			// 빈의 Getter()로 물음표 값 배정
			pstmt.setString(1,bean.getMember_id());
			pstmt.setString(2,bean.getMember_pass());
			pstmt.setString(3,bean.getMember_name());
			pstmt.setString(4,bean.getMember_nickname());
			pstmt.setString(5,bean.getMember_zip1());
			pstmt.setString(6,bean.getMember_zip2());
			pstmt.setString(7,bean.getMember_addr1());
			pstmt.setString(8,bean.getMember_addr2());
			pstmt.setString(9,bean.getMember_profilename());
			pstmt.executeUpdate(); // insert문 실행
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	/* 회원 체크 메서드 */
	public int userCheck(String id, String pass) {
		int result=-1;
		try{
			// 일치되는 id가 있는 조회(단 가입 상태회원)
			sql="select member_pass from member"
			   + " where member_id=? and member_state=1";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery(); // select문 실행
			if(rs.next()){ // id가 있는 경우
				if(rs.getString("member_pass").equals(pass)){
					// db의 pass와 일치한 경우
					result = 1; //id/pass 모두 일치
				}else{
					result = 0; // pass가 틀린 경우
				}				
			}
			pstmt.close(); rs.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return result; // 검색 결과 리턴
	}
	/* 해당 사용자 디비 내용 가져오기 */
	public MemberBean getMember(String id) {		
		MemberBean bean = null;
		try{
			//con=ds.getConnection(); // 커넥션 풀로 디비 연동
			sql = "select * from member where "
				  + " member_id =? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id); // id를 물음표에 배정한다.
			rs = pstmt.executeQuery(); // sql문 실행
			if(rs.next()){ // 검색된 레코드가 있는
				bean = new MemberBean();  // DTO 객체 생성
				// 디비 테이블에서 값을 가져와 빈 클래스에 저장
				bean.setMember_id(rs.getString("member_id"));
				bean.setMember_pass(rs.getString("member_pass"));
				bean.setMember_name(rs.getString("member_name"));
				bean.setMember_nickname(rs.getString("member_nickname"));
				bean.setMember_zip1(rs.getString("member_zip1"));
				bean.setMember_zip2(rs.getString("member_zip2"));
				bean.setMember_addr1(rs.getString("member_addr1"));
				bean.setMember_addr2(rs.getString("member_addr2"));
				bean.setMember_profilename
				            (rs.getString("member_profilename"));				
			}
			rs.close(); pstmt.close(); con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return bean;  // 빈 객체(레코드) 리턴
	}
	/* 회원 정보 수정 */
	public int updateMember(MemberBean bean) {
		int re = -1; // 리턴 변수
		try{
			sql="update member set member_pass=?,"
			   +" member_name=?,member_nickname=?,"
			   + " member_zip1=?,member_zip2=?,"		
			   + " member_addr1=?,member_addr2=?"
			   + " where member_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,bean.getMember_pass());
			pstmt.setString(2,bean.getMember_name());
			pstmt.setString(3,bean.getMember_nickname());
			pstmt.setString(4,bean.getMember_zip1());
			pstmt.setString(5,bean.getMember_zip2());
			pstmt.setString(6,bean.getMember_addr1());
			pstmt.setString(7,bean.getMember_addr2());
			pstmt.setString(8,bean.getMember_id());
			re=pstmt.executeUpdate(); // update문 실행
			// 성공적으로 update가 된 경우 1리턴
			pstmt.close(); con.close();
		}catch(Exception e){
			e.printStackTrace();
		}		
		return re; // 쿼리문 실행결과 리턴
	}
	/* 회원 탈퇴 메서드*/
	public int deleteMember(String id, String pass, String del_cont) {
		int re = -1;
		try{
			// id 사용자 검색
			sql="select member_pass from "
				+ " member where member_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery(); //select문 실행
			if(rs.next()){ // id가 있는 경우
				// 비번을 비교한다.
				if(rs.getString("member_pass").equals(pass)){
					// 비번이 일치한 경우
					sql="update member set"
					 + " member_delcont=?, "
					 + " member_state=2,"
					 + " member_deldate=sysdate "
					 + " where member_id=?";
					// 해당 id 사용자의 탈퇴사유, 회원상태(2)
					// 탈퇴날짜 필드를 수정한다.
					pstmt=con.prepareStatement(sql);
					pstmt.setString(1,del_cont);
					pstmt.setString(2,id);
					re = pstmt.executeUpdate(); //update실행
					// 성공시 re=1
				}else{ // 비번 틀린 경우
					re = 0; 
				}
			}
			rs.close(); pstmt.close();con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return re;
	}
	
}




