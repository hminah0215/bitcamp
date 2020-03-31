package com.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bit.db.ConnectionProvider;
import com.bit.vo.GoodsVO;

public class GoodsDAO {

// 상품등록을 위한 메소드
	public int insertGoods(GoodsVO g) {
		int re = -1;
		String sql = "insert into goods values(?,?,?,?,?,?)";

		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, g.getNo());
			pstmt.setString(2, g.getItem());
			pstmt.setInt(3, g.getPrice());
			pstmt.setInt(4, g.getQty());
			pstmt.setString(5, g.getFname());
			pstmt.setString(6, g.getDetail());
			re = pstmt.executeUpdate();

			ConnectionProvider.close(null, pstmt, conn);
		} catch (Exception e) {

		}
		return re;
	}
}
