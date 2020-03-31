package com.bit.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.bit.db.ConnectionProvider;
import com.bit.vo.CustomerVO;

public class CustomerDAO {
	//모든 고객목록 출력 
	public ArrayList<CustomerVO> listAll(){
		ArrayList<CustomerVO> list = new ArrayList<CustomerVO>();
		try {
			String sql ="select * from customer ";
			Connection conn = ConnectionProvider.getConnection("c##madang", "madang");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				list.add(new CustomerVO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4)));
			}
			ConnectionProvider.close(rs, stmt, conn);
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
	
	//고객 입력하는 
}
