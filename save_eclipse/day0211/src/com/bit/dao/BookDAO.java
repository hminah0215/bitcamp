package com.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.bit.db.ConnectionProvider;
import com.bit.vo.BookVO;

public class BookDAO {

	//상세보기
	public BookVO getBook(int bookid) {
		BookVO b = new BookVO();
		try {
			String sql ="select * from book where bookid = ? ";
			Connection conn = ConnectionProvider.getConnection("c##madang", "madang");
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bookid);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				b.setBookid(rs.getInt(1));
				b.setBookname(rs.getString(2));
				b.setPublisher(rs.getString(3));
				b.setPrice(rs.getInt(4));
			}
			ConnectionProvider.close(rs, pstmt, conn);
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return b;
	}
	
	
	//도서 삭제 메소드
	public int deleteBook(int bookid) {
		int re =-1;
		String sql ="delete book where bookid = ?";
		try {
		Connection conn = ConnectionProvider.getConnection("c##madang", "madang");
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, bookid);
		re = pstmt.executeUpdate();
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}
	
	
	//도서 수정 메소드
	public int updateBook(BookVO b) {
		int re = -1;
		String sql = "update book set bookname=?, publisher=?, price=? where bookid = ? ";
		try {
			Connection conn = ConnectionProvider.getConnection("c##madang", "madang");
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getBookname());
			pstmt.setString(2, b.getPublisher());
			pstmt.setInt(3, b.getPrice());
			pstmt.setInt(4, b.getBookid());
			
			re = pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}
	
	//도서검색 목록을 반환하는 메소드
	public ArrayList<BookVO> listAll(){
		ArrayList<BookVO> list = new ArrayList<BookVO>();
		try{
			String sql ="select * from book ";
			Connection conn = ConnectionProvider.getConnection("c##madang", "madang");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				list.add(new BookVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
			}
			ConnectionProvider.close(rs, stmt, conn);
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return list;
	}
	
	//도서등록 메소드
	public int insertBook(BookVO b) {
		int re = -1;
		try {
			String sql = "insert into book values(?,?,?,?) ";
			Connection conn = ConnectionProvider.getConnection("c##madang", "madang");
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, b.getBookid());
			pstmt.setString(2, b.getBookname());
			pstmt.setString(3, b.getPublisher());
			pstmt.setInt(4, b.getPrice());
			re = pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}
	
	
}
