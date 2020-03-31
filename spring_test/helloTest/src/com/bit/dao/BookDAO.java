package com.bit.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.bit.db.ConnectionProvider;
import com.bit.vo.BookVO;

public class BookDAO {
	
	//모든 도서목록리스트를 반환하는 메소드 
	public ArrayList<BookVO> listAll(){
		ArrayList<BookVO> list = new ArrayList<BookVO>();
		try {
			String sql ="select * from book ";
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				list.add(new BookVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
			}
			ConnectionProvider.close(rs, stmt, conn);
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
}
