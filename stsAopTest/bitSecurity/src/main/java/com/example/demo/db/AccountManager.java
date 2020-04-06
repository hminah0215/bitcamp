package com.example.demo.db;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.TransferVo;

public class AccountManager {
	private static SqlSessionFactory factory;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("com/example/demo/db/sqlMapConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
	}

	// 계좌이체를 위한 메소드를 정의해요
	public static int transfer(TransferVo t) {
		int re = 0;
		SqlSession session = factory.openSession(false);
		re += session.update("account.withdraw", t);
		re += session.update("account.deposit", t);

		if (re == 2) {
			session.commit();
		} else {
			session.rollback();
		}

		return re;
	}
}
