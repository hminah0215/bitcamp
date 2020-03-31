package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
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


	@RequestMapping(value = "/goodsList",produces = "application/json;charset=UTF-8")
	public String goodsList() {
		return (new Gson()).toJson(dao.listAll());
	}
}











