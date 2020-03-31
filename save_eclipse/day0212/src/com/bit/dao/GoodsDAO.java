package com.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.bit.db.ConnectionProvider;
import com.bit.vo.GoodsVO;

public class GoodsDAO {

	// 페이징 처리를 위해...
	public static int totalRecord; 		// 전체레코드 수를 저장하기 위한 변수
	public static int pageSize = 3; 	// 한 화면에 보여줄 레코드 수를 제한하기 위한 변수
	public static int totalPage; 		// 전체 페이지수를 저장하기 위한 변수

	public static int pageGROUP = 5; 	// 한 화면에 보여줄 페이지의 수를 제한하기 위한 변수


	//전체 레코드 수를 반환하는 메소드 
	public int getTotalRecord() {
		int n = 0;
		try {
			String sql ="select count(*) from goods";
			Connection conn = ConnectionProvider.getConnection("c##bit1234", "bit1234");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()) {
				n = rs.getInt(1);
			}
			ConnectionProvider.close(rs, stmt, conn);
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return n;
	}
	
	// 상품목록 메소드 + 페이징처리 
	public ArrayList<GoodsVO> listAll(int pageNUM) {
		
		totalRecord = getTotalRecord();
		totalPage = (int) Math.ceil(totalRecord / (double)pageSize) ;
					// 올림을 해줘라는 Math클래스의 ceil 
		System.out.println("전체페이지수: "+totalPage);
		
		/*
	 	현재페이지에 보여줄 시작 레코드의 위치를 계산
		만약 전체레코드가 19개이고 현재페이지가 1페이지라면 시작레코드의 위치는 1 
		만약 현재 페이지가 2페이지라면 시작레코드의 위치는 5 
		 */ 

		int start = (pageNUM - 1 ) * pageSize + 1 ;
		int end = start + pageSize - 1;
		if( end > totalRecord ) {
			end = totalRecord ;
		}
		
		ArrayList<GoodsVO> list = new ArrayList<GoodsVO>();
		String sql = "select fname, item, price " + 
				"	from (select rownum n, no, item, price, qty, fname, detail " + 
				"		from (select * from goods order by no )) " + 
				" where n between ? and ? ";
		try {
			Connection conn = ConnectionProvider.getConnection("c##bit1234", "bit1234");
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				GoodsVO g = new GoodsVO();
				g.setFname(rs.getString(1));
				g.setItem(rs.getString(2));
				g.setPrice(rs.getInt(3));
				list.add(g);
			}
			ConnectionProvider.close(rs, pstmt, conn);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
	
	
// 상품등록을 위한 메소드
	public int insertGoods(GoodsVO g) {
		int re = -1;
		String sql = "insert into goods values(seq_goods.nextval,?,?,?,?,?)";

		try {
			Connection conn = ConnectionProvider.getConnection("c##bit1234", "bit1234");
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



	// 상품상세
	// 상품번호를 매개변수로 받아 해당 상품의 정보를 vo에 담아서 반환하는 메소드
	public GoodsVO getGoods(int no) {
		GoodsVO g = new GoodsVO();
		try {
			String sql = "select * from goods where no = ?";
			Connection conn = ConnectionProvider.getConnection("c##bit1234", "bit1234");
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				g.setNo(rs.getInt(1));
				g.setItem(rs.getString(2));
				g.setPrice(rs.getInt(3));
				g.setQty(rs.getInt(4));
				g.setFname(rs.getString(5));
				g.setDetail(rs.getString(6));
			}
			ConnectionProvider.close(rs, pstmt, conn);
		} catch (Exception e) {

		}
		return g;
	}

	// 상품수정
	public int updateGoods(GoodsVO g) {
		int re = -1;
		try {
			String sql = "update goods set item = ?, price =?, qty =?, fname=?, detail = ? where no = ?";
			Connection conn = ConnectionProvider.getConnection("c##bit1234", "bit1234");
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, g.getItem());
			pstmt.setInt(2, g.getPrice());
			pstmt.setInt(3, g.getQty());
			pstmt.setString(4, g.getFname());
			pstmt.setString(5, g.getDetail());
			pstmt.setInt(6, g.getNo());

			re = pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}

	// 상품삭제
	// 상품번호를 매개변수로 전달받아 삭제
	public int deleteGoods(int no) {
		int re = -1;
		try {
			String sql = "delete goods where no = ?";
			Connection conn = ConnectionProvider.getConnection("c##bit1234", "bit1234");
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);

			re = pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}
}
