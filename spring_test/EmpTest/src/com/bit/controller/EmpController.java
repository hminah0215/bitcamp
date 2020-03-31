package com.bit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bit.dao.DeptDao;
import com.bit.dao.EmpDao;
import com.bit.vo.EmpVo;

@Controller
public class EmpController {

	@Autowired
	private EmpDao edao;
	
	@Autowired
	private DeptDao ddao;


	public void setEdao(EmpDao edao) {
		this.edao = edao;
	}

	public void setDdao(DeptDao ddao) {
		this.ddao = ddao;
	}

	//사원 등록
	@RequestMapping(value = "/insertEmp.do", method = RequestMethod.GET)
	public ModelAndView insertForm() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("dList", ddao.listAll());
		mav.addObject("mList", edao.managerList());
		return mav;
	}

	@RequestMapping(value = "/insertEmp.do", method = RequestMethod.POST)
	public ModelAndView insertSubmit(EmpVo e) {
		ModelAndView mav = new ModelAndView();
		int re = edao.insertEmp(e);
		mav.addObject("re", re);
		return mav;
	}
	

	
	

}
