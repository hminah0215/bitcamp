package com.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bit.db.ConnectionProvider;
import com.bit.vo.CarVO;

public class CarDAO {

	//차량을 등록하는 메소드 
	public int insertCar(CarVO c) {
		int re = -1;
		try {
			String sql ="insert into car values(?,?,?,?,?,?,?,?)";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, c.getCar_no());
			pstmt.setString(2, c.getCar_type());
			pstmt.setString(3, c.getColor());
			pstmt.setInt(4, c.getSeats());
			pstmt.setInt(5, c.getRent_fee());
			pstmt.setString(6, c.getFname());
			pstmt.setInt(7,c.getCenter_no() );
			pstmt.setInt(8, c.getType_no());
			re = pstmt.executeUpdate();
			
			ConnectionProvider.close(null, pstmt, conn);
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}
	
	//차번호와 옵션번호를 매개변수로 전달받아서 options에 insert를 수행하는 메소드 
	//options vo는 만들지 않고 여기에 바로 dao 작성
	
	public int insertOptions(int car_no, int option_no) {
		int re = -1;
		
		try {
			String sql ="insert into options values(?,?)";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, car_no);
			pstmt.setInt(2, option_no);
			re = pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
