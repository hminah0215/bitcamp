package com.example.demo.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dao.CountDao;
import com.example.demo.vo.CountVo;
import com.google.gson.Gson;

@RestController
public class CountController {
	@Autowired
	private CountDao dao;

	public void setDao(CountDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping(value = "/count", produces = "application/json;setchar=UTF-8")
	public String countEmp() {
		String str = "";
		Gson gson = new Gson();
		str = gson.toJson(dao.countEmp());
		return str;
	}
}
