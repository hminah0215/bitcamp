package com.example.demo.db;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.GoodsVo;


public class GoodsManager {
	private static SqlSessionFactory factory;
	
	static {	//변수가 있던없던 실행되는순간 바로 만들어지고 동작한다.
		try {
			Reader reader = Resources.getResourceAsReader("com/example/demo/db/sqlConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close(); //io에 있는 것들은 열었으면 닫아줘야한다. 그래야 저장됨
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public static int insertGoods(GoodsVo g) {
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.insert("goods.insertGoods", g);
		session.commit();
		session.close();
		return re;
	}
	
	public static List<GoodsVo> listAll(){	//mvc패턴
		SqlSession session = factory.openSession();	//연동된걸 실행시키기위해 공장을 연다
		List<GoodsVo> list = session.selectList("goods.goodsList");
		session.close();
		return list;
	}
	
}
