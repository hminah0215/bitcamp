package com.bit.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.bit.db.ConnectionProvider;
import com.bit.vo.Car_typeVO;

public class Car_typeDAO {
	//카 타입 검색
	public ArrayList<Car_typeVO> chooseType(){
		ArrayList<Car_typeVO> list = new ArrayList<Car_typeVO>();
		String sql="select * from car_type ";
		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				list.add(new Car_typeVO(rs.getInt(1),rs.getDouble(2), rs.getString(3)));
			}
			ConnectionProvider.close(rs, stmt, conn);
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
}
