package com.example.demo.db;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.BoardVo;

public class BoardManager {

	private static SqlSessionFactory factory;

	static {
		try {
			Reader reader = Resources.getResourceAsReader("com/example/demo/db/dbMapConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	// 페이징
	public static int totalRecord() {
		int no = 0;
		SqlSession session = factory.openSession();
		no = session.selectOne("board.totalRecord");
		session.close();
		return no;
	}
	
	
	// 조회수 증가
	public static void updateHit(int no) {
		SqlSession session = factory.openSession(true);
		session.update("board.updateHit", no);
		session.close();
	}
	
	// 답글처리 
	public static void updateStep(HashMap map) {
	
		SqlSession session = factory.openSession();
		session.update("board.updateStep", map);
		session.commit();
		session.close();
		
	}
	
	// 게시글 삭제
	public static int deleteBoard(HashMap map) {
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.delete("board.delete", map);
		session.commit();
		session.close();
		return re;
	}

	// 게시글 수정
	public static int updateBoard(BoardVo b) {
		SqlSession session = factory.openSession();
		int re = -1;
		re = session.update("board.update", b);
		session.commit();
		session.close();
		return re;
	}

	// 게시글 상세보기
	public static BoardVo detailBoard(int no) {
		SqlSession session = factory.openSession();
		BoardVo b = session.selectOne("board.detail", no);
		session.close();
		return b;
	}

	// 게시물번호
	public static int nextNo() {
		int no = 0;
		SqlSession session = factory.openSession();
		no = session.selectOne("board.nextNo");
		session.close();
		return no;
	}

	// 게시글 등록
	public static int insertBoard(BoardVo b) {
		SqlSession session = factory.openSession();
		int re = -1;
		re = session.insert("board.insert", b);
		session.commit();
		session.close();
		return re;
	}

	// 게시판 목록
	public static List<BoardVo> listAll(HashMap map) {
		SqlSession session = factory.openSession();
		List<BoardVo> list = session.selectList("board.listAll", map);
		session.close();
		return list;
	}

}
