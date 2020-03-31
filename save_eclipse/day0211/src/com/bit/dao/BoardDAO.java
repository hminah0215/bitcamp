package com.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.bit.db.ConnectionProvider;
import com.bit.vo.BoardVO;

public class BoardDAO {
	
	//페이징 처리를 위해...
	public static int totalRecord;			// 전체레코드 수를 저장하기 위한 변수
	public static int pageSize = 3 ;		// 한 화면에 보여줄 레코드 수를 제한하기 위한 변수
	public static int totalPage;			// 전체 페이지수를 저장하기 위한 변수
	
	public static int pageGROUP = 5;		// 한 화면에 보여줄 페이지의 수를 제한하기 위한 변수
	
	
	//전체레코드 수를 반환하는 메소드 
	public int getTotalRecord() {
		int n = 0;
		try {
			String sql ="select count(*) from board";
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
	
	// 모든게시물의 목록을 반환하는 메소드 + 페이징처리
	public ArrayList<BoardVO> listAll(int pageNUM) {
		
		totalRecord = getTotalRecord();
		totalPage = totalRecord / pageSize;
		if(totalRecord % pageSize != 0) {
			totalPage++;
		}
		System.out.println("전체페이지수: "+totalPage);
		
		/*
		 	현재페이지에 보여줄 시작 레코드의 위치를 계산해요.
			만약 전체레코드가 53개이고 현재페이지가 1페이지라면 시작레코드의 위치는 1 
			만약 현재 페이지가 2페이지라면 시작레코드의 위치는 11 
		*/ 
	
		int start = (pageNUM - 1 ) * pageSize + 1 ;
		int end = start + pageSize - 1;
		if( end > totalRecord ) {
			end = totalRecord ;
		}

		
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		String sql = "select no,title,writer,pwd,hit,regdate,content,fname,ip " + 
				"	from (select rownum n, no, title,writer,pwd,hit,regdate,content,fname,ip " + 
				"		from (select * from board order by no desc)) " + 
				" where n between ? and ?  ";
		try {
			Connection conn = ConnectionProvider.getConnection("c##bit1234", "bit1234");
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				// 글번호, 글제목, 작성자, 조회수, 등록일만 보이면 될듯
				BoardVO b = new BoardVO();
				b.setNo(rs.getInt(1));
				b.setTitle(rs.getString(2));
				b.setWriter(rs.getString(3));
				b.setHit(rs.getInt(5));
				b.setRegdate(rs.getDate(6));
				b.setIp(rs.getString(9));
				list.add(b);
			}
			ConnectionProvider.close(rs, pstmt, conn);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}


	// 게시물을 등록하는 메소드
	public int insertBoard(BoardVO b) {
		int re = -1;
		String sql = "insert into board values(seq_board.nextval,?,?,?,0,sysdate,?,?,?)";
		try {
			Connection conn = ConnectionProvider.getConnection("c##bit1234", "bit1234");
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getTitle());
			pstmt.setString(2, b.getWriter());
			pstmt.setString(3, b.getPwd());
			pstmt.setString(4, b.getContent());
			pstmt.setString(5, b.getFname());
			pstmt.setString(6, b.getIp());
			re = pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}


	// 게시물 번호를 매개변수로 전달받아 해당 게시물의 정보를 vo에 담아 반환하는 메소드 (상세보기)
	public BoardVO getBoard(int no) {
		BoardVO b = new BoardVO();
		try {
			String sql = "select * from board where no = ? ";
			Connection conn = ConnectionProvider.getConnection("c##bit1234", "bit1234");
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				b.setNo(rs.getInt(1));
				b.setTitle(rs.getString(2));
				b.setWriter(rs.getString(3));
				b.setPwd(rs.getString(4));
				b.setHit(rs.getInt(5));
				b.setRegdate(rs.getDate(6));
				b.setContent(rs.getString(7));
				b.setFname(rs.getString(8));
				b.setIp(rs.getString(9));
			}
			ConnectionProvider.close(rs, pstmt, conn);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return b;
	}

	// 파일명을 매개변수로 전달받아 이미지파일인지 판별하는 메소드를 정의
	public boolean isImage(String fname) {

		boolean re = false;
		if (fname != null) {

			fname = fname.toLowerCase(); // 파일명이 대문자일수도 있으니, 전부 소문자로 바꿔서 판별
			String arr[] = { ".jpg", ".png", ".gif", ".bmp", ".jpeg" };

			for (int i = 0; i < arr.length; i++) {
				if (fname.endsWith(arr[i])) {
					re = true;
					break;
				}
			}
		}
		return re;
	}

	// 글번호와 비밀번호를 매개변수로 전달받아 해당 게시물을 삭제하는 메소드
	public int deleteBoard(int no, String pwd) {
		int re = -1;
		String sql = "delete board where no = ? and pwd = ? ";
		try {
			Connection conn = ConnectionProvider.getConnection("c##bit1234", "bit1234");
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			pstmt.setString(2, pwd);

			re = pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}

	// 게시물을 수정하는 메소드
	public int updateBoard(BoardVO b) {
		int re = -1;
		String sql = "update board set title=?, content=?, fname=? where no=? and pwd=?";
		try {
			Connection conn = ConnectionProvider.getConnection("c##bit1234", "bit1234");
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getTitle());
			pstmt.setString(2, b.getContent());
			pstmt.setString(3, b.getFname());
			pstmt.setInt(4, b.getNo());
			pstmt.setString(5, b.getPwd());

			re = pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return re;
	}

	// 게시물 번호를 매개변수로 전달받아 해당 게시물의 조회수 증가를 위한 메소드를 정의
	public void updateHit(int no) {
		String sql = "update board set hit=hit+1 where no =?";
		try {
			Connection conn = ConnectionProvider.getConnection("c##bit1234", "bit1234");
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
			ConnectionProvider.close(null, pstmt, conn);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
