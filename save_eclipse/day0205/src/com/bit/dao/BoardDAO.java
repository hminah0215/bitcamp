package com.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.bit.db.ConnectionProvider;
import com.bit.vo.BoardVO;

public class BoardDAO {

	
	//다음에 등록될 게시물의 번호를 반환하는메소드. 자동으로 다음번호가 나오도록
	public int nextNo() {
		int no = 0;
		String sql = "select nvl(max(no),0)+1 from board ";
		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()) {
				no = rs.getInt(1);
			}
			ConnectionProvider.close(rs, stmt, conn);
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return no;
	}
	
	//게시물을 등록하는 메소드 
	public int insertBoard(BoardVO b) {
		int re = -1;
		String sql ="insert into board values(?,?,?,?,0,sysdate,?,?)" ;
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nextNo());
			pstmt.setString(2, b.getTitle());
			pstmt.setString(3, b.getWriter());
			pstmt.setString(4, b.getPwd());
			pstmt.setString(5, b.getContent());
			pstmt.setString(6, b.getFname());
			
			re = pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}
	
	// 모든게시물의 목록을 출력하는 메소드
	public ArrayList<BoardVO> listBoard(){
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		String sql = "select * from board ";
		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				list.add(new BoardVO(rs.getInt(1), rs.getString(2), rs.getString(3), 
						rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8)));
			}
			ConnectionProvider.close(rs, stmt, conn);
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
	
	//게시물을 수정하는 메소드 
	public int updateBoard(BoardVO b) {
		int re = -1;
		String sql="update board set title=?, content=?, fname=? where no=? and pwd=?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getTitle());
			pstmt.setString(2, b.getContent());
			pstmt.setString(3, b.getFname());
			pstmt.setInt(4, b.getNo());
			pstmt.setString(5, b.getPwd());
		
			re = pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);
	
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}
	
	//게시물을 삭제하는 메소드 
	public int deleteBoard(int no, String pwd) {
		int re = -1;
		String sql="delete board where no = ? and pwd = ? ";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			pstmt.setString(2, pwd);
			
			re = pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}
}
