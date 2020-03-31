package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.controller.GoodsController;
import com.example.demo.db.GoodsManager;
import com.example.demo.vo.GoodsVo;

@Repository
public class GoodsDao {
	
	public static int pageSIZE = 4;
	public static int totalRecord = 0;
	public static int totalPage = 1;
	
	public int gettotalRecord() {
		return GoodsManager.totalRecord();
	}
	
	public int deleteGoods(int no) {
		return GoodsManager.deleteGoods(no);
	}
	
	public int updateGoods(GoodsVo g) {
		return GoodsManager.updateGoods(g);
	}
	
	public GoodsVo detailGoods(int no) {
		return GoodsManager.detailGoods(no);
	}
	
	public int insertGoods(GoodsVo g) {
		return GoodsManager.insertGoods(g);
	}
	
	public List<GoodsVo> listAll(HashMap map){
		
		//페이징처리 
		totalRecord = gettotalRecord();
		totalPage = (int) Math.ceil( totalRecord / (double)pageSIZE );
		System.out.println("전체페이지수: " + totalPage);
		return GoodsManager.listAll(map);
	}
}
