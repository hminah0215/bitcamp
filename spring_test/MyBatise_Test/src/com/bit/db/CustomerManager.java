package com.bit.db;


import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.bit.vo.CustomerVo;

public class CustomerManager {
	private static SqlSessionFactory factory;
		static {
			try {
				Reader reader = Resources.getResourceAsReader("com/bit/db/sqlMapConfig.xml");
				factory = new SqlSessionFactoryBuilder().build(reader);
			}catch (Exception e) {
				System.out.println(e.getMessage());
			}	
		}
		
		public static List<CustomerVo> listAll(){
			SqlSession session = factory.openSession();
			List<CustomerVo> list = session.selectList("customer.selectAll");
			session.close();
			return list;
		}
}
