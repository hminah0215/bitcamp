package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.GoodsManager;
import com.example.demo.vo.GoodsVo;

@Repository
public class GoodsDao {
	
	public int InsertGoods(GoodsVo g) {
		return GoodsManager.insertGoods(g);
	}
	
	public int UpdateGoods(GoodsVo g) {
		return GoodsManager.updateGoods(g);
	}
	
	public int deleteGoods(int no) {
		return GoodsManager.deleteGoods(no);
	}
	
	public GoodsVo detailGoods(int no) {
		return GoodsManager.detailGoods(no);
	}
	
	public List<GoodsVo> goodsList(HashMap map){
		return GoodsManager.listGoods(map);
	}
}
