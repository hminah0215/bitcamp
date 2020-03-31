package com.example.demo.db;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.BookVo;

public class BookManager {
	
	private static SqlSessionFactory factory;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("com/example/demo/db/sqlConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public static int delete(BookVo b) {
		SqlSession session = factory.openSession();
		int re = session.delete("book.delete",b);
		session.commit();
		session.close();
		return re;
	}
	
	public static int update(BookVo b) {
		SqlSession session = factory.openSession();
		int re = session.update("book.update",b);
		session.commit();
		session.close();
		return re;
	}
	
	public static int insert(BookVo b) {
		SqlSession session = factory.openSession();
		int re = session.insert("book.insert",b);
		session.commit();
		session.close();
		return re;
	}
	
	public static List<BookVo> listAll(){
		SqlSession session = factory.openSession();
		List<BookVo> list = session.selectList("book.selectAll");
		session.close();
		return list;
	}
}
