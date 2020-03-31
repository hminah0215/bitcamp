package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dao.StockDao;
import com.example.demo.vo.MyStockVo;
import com.example.demo.vo.StockVo;
import com.google.gson.Gson;

@RestController
public class StockController {
	@Autowired
	private StockDao dao;

	public void setDao(StockDao dao) {
		this.dao = dao;
	}
	
	 @RequestMapping(value = "listStock", produces = "application/json;charset=UTF-8")
	   public String listAll() {
	      String str = "";
	      List<StockVo> list  = dao.listAll();
	      Gson gson = new Gson();
	      str = gson.toJson(list);
	      return str;
	   }
	 
	   @RequestMapping(value = "listMy", produces = "application/json;charset=UTF-8")
	   public String listMy() {
	      String str = "";
	      List<MyStockVo> list2 = dao.listMy();
	      Gson gson = new Gson();
	      str = gson.toJson(list2);
	      return str;
	   }
	   
	   @RequestMapping(value = "insert" ,produces = "application/json;charset=UTF-8")
	   public String insert(MyStockVo my) {
		  System.out.println("입력: "+my);
		  String str = "ok";
		  dao.insert(my);
		  return str;
	   }
	   
	   @RequestMapping(value = "update" ,produces = "application/json;charset=UTF-8")
	   public String update(MyStockVo my) {
		  System.out.println("수정: "+my);
		  String str = "";
		  dao.update(my);
		  return str;
	   }
	   
	   @RequestMapping(value = "cntup" ,produces = "application/json;charset=UTF-8")
	   public String cntup(MyStockVo cnt) {
		  System.out.println(cnt.getS_name());
		  String str = "";
		  Gson gson = new Gson();
	      str = gson.toJson(dao.cntup(cnt));
		  return str;
	   }
	   @RequestMapping(value = "delete" ,produces = "application/json;charset=UTF-8")
	   public String delete(MyStockVo my) {
		   String str = "";
		   dao.delete(my);
		   return str;
	   }

	
}
