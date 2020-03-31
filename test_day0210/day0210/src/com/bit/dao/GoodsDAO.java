package com.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.bit.db.ConnectionProvider;
import com.bit.vo.GoodsVO;

public class GoodsDAO {

// 상품등록을 위한 메소드
	public int insertGoods(GoodsVO g) {
		int re = -1;
		String sql = "insert into goods values(seq_goods.nextval,?,?,?,?,?)";

		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, g.getItem());
			pstmt.setInt(2, g.getPrice());
			pstmt.setInt(3, g.getQty());
			pstmt.setString(4, g.getFname());
			pstmt.setString(5, g.getDetail());
			re = pstmt.executeUpdate();

			ConnectionProvider.close(null, pstmt, conn);
		} catch (Exception e) {

		}
		return re;
	}
	
	//상품목록
	public ArrayList<GoodsVO> listAll(){
		ArrayList<GoodsVO> list = new ArrayList<GoodsVO>();
		String sql ="select * from goods order by no ";
		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				list.add(new GoodsVO(rs.getInt(1), rs.getString(2), rs.getInt(3),
							rs.getInt(4), rs.getString(5), rs.getString(6)));
			}
			ConnectionProvider.close(rs, stmt, conn);
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
	
	//상품상세
	//상품번호를 매개변수로 받아 해당 상품의 정보를 vo에 담아서 반환하는 메소드
	public GoodsVO getGoods(int no) {
		GoodsVO g = new GoodsVO();
		try {
			String sql = "select * from goods where no = ?";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				g.setNo(rs.getInt(1));
				g.setItem(rs.getString(2));
				g.setPrice(rs.getInt(3));
				g.setQty(rs.getInt(4));
				g.setFname(rs.getString(5));
				g.setDetail(rs.getString(6));
			}
			ConnectionProvider.close(rs, pstmt, conn);
		}catch (Exception e) {
			
		}
		return g;
	}
	
	//상품수정
	public int updateGoods(GoodsVO g) {
		int re = -1;
		try {
			String sql ="update goods set item = ?, price =?, qty =?, fname=?, detail = ? where no = ?";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, g.getItem());
			pstmt.setInt(2, g.getPrice());
			pstmt.setInt(3, g.getQty());
			pstmt.setString(4, g.getFname());
			pstmt.setString(5, g.getDetail());
			pstmt.setInt(6, g.getNo());
			
			re = pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}
	
	//상품삭제
	//상품번호를 매개변수로 전달받아 삭제
	public int deleteGoods(int no) {
		int re = -1;
		try {
			String sql ="delete goods where no = ?";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			re = pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}
}
