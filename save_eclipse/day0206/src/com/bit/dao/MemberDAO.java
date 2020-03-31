package com.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bit.db.ConnectionProvider;
import com.bit.vo.MemberVO;

public class MemberDAO {
	
	//아이디와 암호를 매개변수로 전달받아 올바른 회원인지 판별하여 
	//결과를 반환하는 메소드정의 
	
	public boolean isMember(String id, String pwd) {
		boolean re = false;
		String sql="select * from member where id=? and pwd=? ";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				re = true;
			}
			ConnectionProvider.close(rs, pstmt, conn);
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}
	
	//새로운 멤버를 등록하는 메소드
	public int listAddMember(MemberVO mv) {
	      int re = -1;
	      String sql = "insert into member values(?,?,?,?,to_date(?),?,?,?,?,?,?,?)";
	      try {
	         Connection conn = ConnectionProvider.getConnection();
	         PreparedStatement pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, mv.getId());
	         pstmt.setString(2, mv.getPwd());
	         pstmt.setString(3, mv.getName());
	         pstmt.setString(4, mv.getTel());
	         pstmt.setString(5, mv.getBirth());
	         pstmt.setString(6, mv.getEmail());
	         pstmt.setString(7, mv.getGender());
	         pstmt.setString(8, mv.getBlood());
	         pstmt.setString(9, mv.getHobby());
	         pstmt.setString(10, mv.getUrl());
	         pstmt.setString(11, mv.getJob());
	         pstmt.setString(12, mv.getIntro());
	         
	         re = pstmt.executeUpdate();
	         ConnectionProvider.close(null, pstmt, conn);
	         
	      }catch (Exception e) {
	         System.out.println(e.getMessage());
	      }
	      return re;
	   }

}
