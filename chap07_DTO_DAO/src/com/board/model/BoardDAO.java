package com.board.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db.DBConnection;

public class BoardDAO { //db 연동(jdbc+dbcp) 객체 생성
	   Connection con = null;
	   PreparedStatement pstmt = null;
	   ResultSet rs = null;
	   String sql = null;
	   
	   public BoardDAO(){
		   DBConnection db;
		try {
			db = new DBConnection();
			con = db.con;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}   
	   }//생성자 end
	   
	   /* getBoardList() */
	   public List<BoardDTO>getBoardList(){ //전체 게시물 목록 보기
		   List<BoardDTO> list = new ArrayList<BoardDTO>();
		   sql = "select * from jsp_board order by board_no desc";
		   try{
			   pstmt = con.prepareStatement(sql);
			   rs = pstmt.executeQuery();
			   while(rs.next()){
				   //레코드를 칼럼 단위로 가져와서 dto에 저장
				   BoardDTO dto = new BoardDTO();
				   dto.setBoard_no(rs.getInt("board_no"));
				   dto.setBoard_name(rs.getString("board_name"));
				   dto.setBoard_title(rs.getString("board_title"));
				   dto.setBoard_cont(rs.getString("board_cont"));
				   dto.setBoard_pwd(rs.getString("board_pwd"));
				   dto.setBoard_hit(rs.getInt("board_hit"));
				   dto.setBoard_regdate(rs.getString("board_regdate"));
				   //dto 갹체를 list에 추가
				   list.add(dto);
			   }
		   rs.close();pstmt.close();con.close();   
		   }catch(Exception e){
			   e.printStackTrace();
		   }
		   return list;
	   }//getBoardlist() end
	   
	   /*insertBoard() */
	   public int insertBoard(BoardDTO dto){
		   int re = -1;
		   sql = "insert into jsp_board values(board_seq.nextval,?,?,?,?,default,sysdate)";
		   try{
			 pstmt = con.prepareStatement(sql);
			 pstmt.setString(1,dto.getBoard_name());
			 pstmt.setString(2, dto.getBoard_title());
			 pstmt.setString(3, dto.getBoard_cont());
			 pstmt.setString(4, dto.getBoard_pwd());
			 re = pstmt.executeUpdate();
			 pstmt.close();con.close();
		   }catch(Exception e){
			   e.printStackTrace();
		   }
		   return re;
		   
	   } //insertBoard end
	   
	   /* board_cont : 게시물 내용보기 */
	   public BoardDTO board_cont(int board_no){
		   BoardDTO dto = new BoardDTO();
		   sql = "select * from jsp_board where board_no=?";
		   try{
			   pstmt = con.prepareStatement(sql);
			   pstmt.setInt(1, board_no);
			   rs=pstmt.executeQuery();
			   if(rs.next()){
				   dto.setBoard_no(rs.getInt("board_no"));
				   dto.setBoard_name(rs.getString("board_name"));
				   dto.setBoard_title(rs.getString("board_title"));
				   dto.setBoard_cont(rs.getString("board_cont"));
				   dto.setBoard_pwd(rs.getString("board_pwd"));
				   dto.setBoard_hit(rs.getInt("board_hit"));
				   dto.setBoard_regdate(rs.getString("board_regdate"));
				}
			   rs.close();pstmt.close(); //con.close();
		   }catch(Exception e){
			   e.printStackTrace();   
		   }
		   return dto;
	   }//board_cont end
	   /* 조회수 증가 : update */
	   public void board_hit(int board_no){
		   sql = "update jsp_board set board_hit=board_hit+1 where board_no=?";
		   try{
			   pstmt=con.prepareStatement(sql);
			   pstmt.setInt(1, board_no);
			   pstmt.executeUpdate();
			   
			   pstmt.close();con.close();
			   }catch(Exception e){
			  e.printStackTrace(); 
		   }
		   
	   }//method end
	   
	   /* 게시물 수정 : 제목, 내용 수정 */
	   public int board_update(BoardDTO dto){
		   int re = -1;
		   sql = "update jsp_board set board_title=?, board_cont=? where board_no=?";
		   try{
			   pstmt = con.prepareStatement(sql);
			   pstmt.setString(1, dto.getBoard_title());
			   pstmt.setString(2, dto.getBoard_cont());
			   pstmt.setInt(3, dto.getBoard_no());
			   re = pstmt.executeUpdate();
			   pstmt.close();con.close();
		   }catch(Exception e){
			   e.printStackTrace();
		   }
		   return re;
	   }
	   
	   public int board_delete(int board_no, String pwd){
		   int re =-1;
		   sql = "select * from jsp_board where board_no=?";
		   
		   try{
			   pstmt=con.prepareStatement(sql);
			   pstmt.setInt(1, board_no);
			   rs=pstmt.executeQuery();
			   if(rs.next()){
				  if(pwd.equals(rs.getString("board_pwd"))){
				   sql ="delete from jsp_board where board_no=?";
				   pstmt = con.prepareStatement(sql);
				   pstmt.setInt(1, board_no);
				   re=pstmt.executeUpdate();
				  }
			   }
			   pstmt.close();rs.close();con.close();
		   }catch(Exception e){
			   e.printStackTrace();
		   }
		   
		   return re;
	   }
}
