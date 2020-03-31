package com.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bit.db.ConnectionProvider;
import com.bit.vo.MemberVO;

public class MemberDAO {
	// 멤버를 등록하는 메소드
	public int insertMember(MemberVO m) {
		int re = -1;
		try {
			String sql = "insert into member values (?,?,?,?,to_date(?,'yyyy/mm/dd'),?,?,?,?,?,?,?)";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getId());
			pstmt.setString(2, m.getPwd());
			pstmt.setString(3, m.getName());
			pstmt.setString(4, m.getTel());
			pstmt.setString(5, m.getBirth());
			pstmt.setString(6, m.getEmail());
			pstmt.setString(7, m.getGender());
			pstmt.setString(8, m.getBlood());
			pstmt.setString(9, m.getHobby());
			pstmt.setString(10, m.getUrl());
			pstmt.setString(11, m.getJob());
			pstmt.setString(12, m.getIntro());
			re = pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return re;
	}

}
