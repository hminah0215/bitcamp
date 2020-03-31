package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.DeptDao;

@Controller
public class DeptController {

	@Autowired
	private DeptDao dao;
	
	
	
	public void setDao(DeptDao dao) {
		this.dao = dao;
	}


	// 부서 목록
	@RequestMapping("/listDept.do")
	public ModelAndView listDept() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("title", "부서목록");
		mav.addObject("list", dao.listAll());
		
		return mav;
	}
	
}

