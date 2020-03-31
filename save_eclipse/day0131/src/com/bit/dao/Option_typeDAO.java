package com.bit.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.bit.db.ConnectionProvider;
import com.bit.vo.Option_typeVO;

public class Option_typeDAO {

	//옵션검색
	public ArrayList<Option_typeVO> listOption(){
		ArrayList<Option_typeVO> list = new ArrayList<Option_typeVO>();
		
		try {
			String sql="select * from option_types ";
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				list.add(new Option_typeVO(rs.getInt(1), rs.getString(2), rs.getInt(3)));
			}
			ConnectionProvider.close(rs, stmt, conn);
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
}
