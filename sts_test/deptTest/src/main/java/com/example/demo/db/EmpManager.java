package com.example.demo.db;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.EmpViewVo;
import com.example.demo.vo.EmpVo;

public class EmpManager {
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

	// 관리자 목록
	public static List<EmpVo> managerList() {
		SqlSession session = factory.openSession();
		List<EmpVo> list = session.selectList("emp.managerList");
		session.close();
		return list;
	}

	// 사원 등록
	public static int insertEmp(EmpVo e) {
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.insert("emp.insertEmp", e);
		session.commit();
		session.close();
		return re;
	}

	// 사원 목록 empview
	public static List<EmpViewVo> listEmpView(HashMap map) {
		SqlSession session = factory.openSession();
		List<EmpViewVo> list = session.selectList("emp.listEmpView" , map);
		session.close();
		return list;
	}
}
