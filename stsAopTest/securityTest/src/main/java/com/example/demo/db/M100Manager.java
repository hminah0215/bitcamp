package com.example.demo.db;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.Member100Vo;

public class M100Manager {
	private static SqlSessionFactory factory;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("com/example/demo/db/sqlMapConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public static Member100Vo selectMember(String username) {
		SqlSession session = factory.openSession();
		Member100Vo m = session.selectOne("member.selectMember",username);
		session.close();
		return m;
	}
	
	public static int insertMember(Member100Vo m) {
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.insert("member.insert",m);
		session.commit();
		session.close();
		return re;
	}
}

