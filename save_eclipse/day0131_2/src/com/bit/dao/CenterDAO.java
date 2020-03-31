package com.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.bit.db.ConnectionProvider;
import com.bit.vo.CenterVO;

public class CenterDAO {

//사무소 리스트를 반환하는 메소드 
	public ArrayList<CenterVO> listAll(){
		ArrayList<CenterVO> list = new ArrayList<CenterVO>();
		try {
			String sql ="select * from center ";
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				list.add(new CenterVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)));
			}
			ConnectionProvider.close(rs, stmt, conn);
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
	
//사무소를 등록하는 메소드
	public int insertCenter(CenterVO c) {
		int re = -1;
		String sql = "insert into center values(?,?,?,?) ";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, c.getCenter_no());
			pstmt.setString(2, c.getCenter_name());
			pstmt.setString(3, c.getCenter_tel());
			pstmt.setString(4, c.getCenter_addr());
			re = pstmt.executeUpdate();
			
			ConnectionProvider.close(null, pstmt, conn);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return re;
	}
}
