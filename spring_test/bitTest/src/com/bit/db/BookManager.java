package com.bit.db;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.bit.vo.BookVo;


public class BookManager {
	private static SqlSessionFactory factory;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("com/bit/db/sqlMapConfig.xml");		
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
	}
	//도서 상세보기
	public static BookVo getBook(int bookid) {
		SqlSession session = factory.openSession();
		BookVo bv = session.selectOne("book.detailBook", bookid);
		session.close();
		return bv;
	}
	
	//도서 삭제 
	public static int deleteBook(int bookid) {
		int re = -1;
		SqlSession session = factory.openSession(true);
		re = session.delete("book.delete", bookid);
		session.close();
		return re;
	}
	
	//도서 수정 
	public static int updateBook(BookVo b) {
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.update("book.update", b);
		session.commit();
		session.close();
		return re;
	}
	
	// 도서 등록 
	public static int insertBook(BookVo b) {
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.insert("book.insert", b);
		session.commit();
		session.close();
		return re;
	}
	
	// 도서목록
	public static List<BookVo> listAll(HashMap map){
		SqlSession session = factory.openSession();
		List<BookVo> list = session.selectList("book.selectAll" , map);
		session.close();
		return list;
	}
}
