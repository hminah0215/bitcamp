package com.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.bit.db.ConnectionProvider;
import com.bit.vo.CustomerVO;

@Repository
public class CustomerDAO {
	
	//상세보기 
	public CustomerVO getCustomer(int custid) {
		CustomerVO c = new CustomerVO();
		try {
			String sql ="select * from customer where custid = ? ";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, custid);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				c.setCustid(rs.getInt(1));
				c.setName(rs.getString(2));
				c.setAddress(rs.getString(3));
				c.setPhone(rs.getString(4));
			}
			ConnectionProvider.close(rs, pstmt, conn);
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return c;
	}
	
	
	//고객목록
	public ArrayList<CustomerVO> listCustomer(){
		ArrayList<CustomerVO> list = new ArrayList<CustomerVO>();
		try {
			String sql ="select * from customer order by custid";
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				list.add(new CustomerVO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4)));
			}
			ConnectionProvider.close(rs, stmt, conn);
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;

	}

	//고객등록
	public int insertCustomer(CustomerVO c) {
		// TODO Auto-generated method stub
		int re = -1;
		try {
			String sql="insert into customer values(?,?,?,?)";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, c.getCustid());
			pstmt.setString(2, c.getName());
			pstmt.setString(3, c.getAddress());
			pstmt.setString(4, c.getPhone());
			re = pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}

	//고객 수정
	public int updateCustomer(CustomerVO c) {
		// TODO Auto-generated method stub
		int re = -1;
		try {
			String sql="update customer set name=?, address=?, phone=? where custid=?";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, c.getName());
			pstmt.setString(2, c.getAddress());
			pstmt.setString(3, c.getPhone());
			pstmt.setInt(4, c.getCustid());		
			re = pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}
	
	//고객 삭제 
	public int deleteCustomer(int custid) {
		int re = -1;
		String sql="delete customer where custid=? ";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, custid);
			re = pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}
}
