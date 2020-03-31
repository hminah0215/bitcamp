package com.example.demo.db;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.GoodsVo;

public class GoodsManager {
	
	private static SqlSessionFactory factory;
	
	static {
		try {
			Reader reader = Resources.getResourceAsReader("com/example/demo/db/dbConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	// 페이징처리 
	public static int totalRecord() {
		int cnt = 0;
		
		SqlSession session = factory.openSession();
		cnt = session.selectOne("goods.totalRecord");
		session.close();
		return cnt;
	}
	
	
	//상품삭제
	public static int deleteGoods(int no) {
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.delete("goods.delete", no);
		session.commit();
		session.close();
		return re;
	}
	
	// 상품수정
	public static int updateGoods(GoodsVo g) {
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.update("goods.update", g);
		session.commit();
		session.close();
		return re;
	}
	
	// 상품상세보기
	public static GoodsVo detailGoods(int no) {
		SqlSession session = factory.openSession();
		GoodsVo g = session.selectOne("goods.detail", no);
		session.close();
		return g;
	}
	
	
	// 상품등록
	public static int insertGoods(GoodsVo g) {
		int re = -1;
		SqlSession session = factory.openSession();//()에 true를 주면 커밋을 아래처럼 따로 적을 필요없다
		re = session.insert("goods.insert", g);
		session.commit();
		session.close();
		return re;
	}
	
	// 상품목록
	public static List<GoodsVo> listAll(HashMap map){
		SqlSession session = factory.openSession();
		//mapper 파일에 실제로있는 네임스페이스(goods)랑 아이디(selectAll)여야함 
		List<GoodsVo> list = session.selectList("goods.selectAll", map);	
		session.close();
		return list;
	}
}
