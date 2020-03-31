package com.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.bit.db.ConnectionProvider;
import com.bit.vo.BoardVO;

public class BoardDAO {

	
	// 게시물을 등록하는 메소드
	public int insertBoard(BoardVO b) {
		int re = -1;
		String sql = "insert into board values(seq_board.nextval,?,?,?,0,sysdate,?,?,?)";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getTitle());
			pstmt.setString(2, b.getWriter());
			pstmt.setString(3, b.getPwd());
			pstmt.setString(4, b.getContent());
			pstmt.setString(5, b.getFname());
			pstmt.setString(6, b.getIp());
			re = pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}

	// 모든게시물의 목록을 반환하는 메소드
	public ArrayList<BoardVO> listAll() {
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		String sql = "select * from board order by no desc ";
		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				// 글번호, 글제목, 작성자, 조회수, 등록일만 보이면 될듯
				BoardVO b = new BoardVO();
				b.setNo(rs.getInt(1));
				b.setTitle(rs.getString(2));
				b.setWriter(rs.getString(3));
				b.setHit(rs.getInt(5));
				b.setRegdate(rs.getDate(6));
				b.setIp(rs.getString(9));
				list.add(b);
			}
			ConnectionProvider.close(rs, stmt, conn);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}

	// 게시물 번호를 매개변수로 전달받아 해당 게시물의 정보를 vo에 담아 반환하는 메소드 (상세보기)
	public BoardVO getBoard(int no) {
		BoardVO b = new BoardVO();
		try {
			String sql = "select * from board where no = ? ";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				b.setNo(rs.getInt(1));
				b.setTitle(rs.getString(2));
				b.setWriter(rs.getString(3));
				b.setPwd(rs.getString(4));
				b.setHit(rs.getInt(5));
				b.setRegdate(rs.getDate(6));
				b.setContent(rs.getString(7));
				b.setFname(rs.getString(8));
				b.setIp(rs.getString(9));
			}
			ConnectionProvider.close(rs, pstmt, conn);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return b;
	}

	// 파일명을 매개변수로 전달받아 이미지파일인지 판별하는 메소드를 정의
	public boolean isImage(String fname) {

		boolean re = false;
		if (fname != null) {
			
			fname = fname.toLowerCase(); // 파일명이 대문자일수도 있으니, 전부 소문자로 바꿔서 판별
			String arr[] = { ".jpg", ".png", ".gif", ".bmp", ".jpeg" };

			for (int i = 0; i < arr.length; i++) {
				if (fname.endsWith(arr[i])) {
					re = true;
					break;
				}
			}
		}
		return re;
	}

	// 글번호와 비밀번호를 매개변수로 전달받아 해당 게시물을 삭제하는 메소드
	public int deleteBoard(int no, String pwd) {
		int re = -1;
		String sql = "delete board where no = ? and pwd = ? ";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			pstmt.setString(2, pwd);

			re = pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}
	
	// 게시물을 수정하는 메소드
	public int updateBoard(BoardVO b) {
		int re = -1;
		String sql = "update board set title=?, content=?, fname=? where no=? and pwd=?";
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

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}
	
	//게시물 번호를 매개변수로 전달받아 해당 게시물의 조회수 증가를 위한 메소드를 정의 
	public void updateHit(int no) {
		String sql ="update board set hit=hit+1 where no =?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
