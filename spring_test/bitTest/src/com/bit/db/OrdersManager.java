package com.bit.db;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.bit.vo.BookVo;
import com.bit.vo.OrdersVo;


public class OrdersManager {
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

	// 주문 등록 
	public static int insertOrders(OrdersVo o) {
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.insert("orders.insert", o);
		session.commit();
		session.close();
		return re;
	}
	

}
