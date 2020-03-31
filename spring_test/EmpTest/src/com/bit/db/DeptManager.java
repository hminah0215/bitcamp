package com.bit.db;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.bit.vo.DeptVo;

public class DeptManager {
	
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
	public static List<DeptVo> listAll(){
		SqlSession session = factory.openSession();
		List<DeptVo> list = session.selectList("dept.selectAll");
		session.close();
		return list;
	}
}
