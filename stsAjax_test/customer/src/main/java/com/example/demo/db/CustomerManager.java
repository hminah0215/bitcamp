package com.example.demo.db;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.CustomerVo;

public class CustomerManager {
	
	public static SqlSessionFactory factory;
	
	static {
		try {
			Reader reader = Resources.getResourceAsReader("com/example/demo/db/sqlConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public static int updateCustomer(CustomerVo c) {
		SqlSession session = factory.openSession();
		int re = session.update("customer.updateCustomer",c);
		session.commit();
		session.close();
		return re;
	}
	
	public static int deleteCustomer(int custid) {
		SqlSession session = factory.openSession();
		int re = session.delete("customer.deleteCustomer",custid);
		session.commit();
		session.close();
		return re;
	}
	
	public static int insertCustomer(CustomerVo c) {
		SqlSession session = factory.openSession();
		int re = session.insert("customer.insertCustomer",c);
		session.commit();
		session.close();
		return re;
	}
	
	public static CustomerVo detailcustomer(int custid) {
		SqlSession session = factory.openSession();
		CustomerVo c =  session.selectOne("customer.detailCustomer",custid);
		session.close();
		return c;
	}
	
	public static List<CustomerVo> listAll(){
		SqlSession session = factory.openSession();
		List<CustomerVo> list = session.selectList("customer.selectAll");
		session.close();
		return list;
	}
}
