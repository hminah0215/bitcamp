package com.bit.db;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.bit.vo.EmpVo;

public class EmpManager {
	private static SqlSessionFactory factory;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("com/bit/db/sqlMapConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	// 사원 등록
	public static int insertEmp(EmpVo e) {
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.insert("emp.insert", e);
		session.commit();
		session.close();
		return re;
	}
	
	//관리자 목록
	public static List<EmpVo> managerList() {
		SqlSession session = factory.openSession();
		List<EmpVo> list = session.selectList("emp.managerList");
		session.close();
		return list;
	}

}
