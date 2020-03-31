package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dao.GoodsDao;
import com.google.gson.Gson;

@RestController
public class GoodsController {
	@Autowired
	private GoodsDao dao;

	public void setDao(GoodsDao dao) {
		this.dao = dao;
	}

	@RequestMapping(value = "gList", produces ="application/json;charset=UTF-8" )
	public String gList() {
		String str = "";
		Gson gson = new Gson();
		str = gson.toJson(dao.listAll());
		return str;
	}
	
	
	
//	//프로듀스에는 한글설정을 해준다. 
//	@RequestMapping(value = "/listGoods.do", produces = "application/json;charset=UTF-8")	
//	@ResponseBody	//xml, json등으로 할때는 ResponseBody를 꼭 사용해야한다.
//	public String listGoods() {
//		String str = "";
//		Gson gson = new Gson();
//		str = gson.toJson(dao.listAll());
//		return str;
//	}

}
