package com.bit.db;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.bit.vo.CustomerVo;

public class CustomerManager {

	// 객체없이도 동작하는 맵핑파일 접근객체 선언
	private static SqlSessionFactory factory;

	// 객체와 무관하게 동작하도록 static블럭 안에 파일을 읽어올수있게 만들기
	static {
		try {
			Reader reader = Resources.getResourceAsReader("com/bit/db/sqlMapConfig.xml");

			// sqlMapConfig.xml 정보를 factory가 담고있음
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	// 고객수정 update
	public static int updateCustomer(CustomerVo c) {
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.update("customer.update", c);
		session.commit();
		session.close();
		return re;
	}

	// 고객삭제 delete
	public static int deleteCustomer(int custid) {
		int re = -1;
		SqlSession session = factory.openSession(true);
		re = session.delete("customer.delete", custid);
//		session.commit(); 위에 openSession에 true써서 바로 커밋해도 됨. 단순한 쿼리일때! 
		session.close();
		return re;
	}

	// 고객등록 insert
	public static int insertCustomer(CustomerVo c) {
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.insert("customer.insert", c);
		// 등록,수정,삭제는 커밋 필수!!!!!
		session.commit();
		session.close();
		return re;
	}
	

	// 상세보기
	// dao, controller, viewpage를 작성하여 결과를 확인하기
	public static CustomerVo getCustomer(int custid) {
		SqlSession session = factory.openSession();
		CustomerVo cv = session.selectOne("customer.selectCustomer", custid);
		session.close();
		return cv;
	}

	// 맵핑파일 CustomerMapper에 있는 listAll을 요청하는 메소드
	public static List<CustomerVo> listAll(HashMap map) {
		SqlSession session = factory.openSession();
		List<CustomerVo> list = session.selectList("customer.selectAll", map);
		session.close();
		return list;
	}
	
}
