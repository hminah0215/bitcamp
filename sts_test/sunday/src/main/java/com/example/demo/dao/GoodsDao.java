package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.GoodsManager;
import com.example.demo.vo.GoodsVo;

@Repository
public class GoodsDao {
	//스프링에서 자동의 경로를 잡아줌 

	public int insertGoods(GoodsVo g) {
		return GoodsManager.insertGoods(g);
	}
	
	public List<GoodsVo> listAll(){
		return GoodsManager.listAll();
	}
}
