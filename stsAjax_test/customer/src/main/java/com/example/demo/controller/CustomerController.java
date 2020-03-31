package com.example.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.CustomerDao;
import com.example.demo.vo.CustomerVo;

@Controller
public class CustomerController {
	@Autowired
	private CustomerDao dao;

	public void setDao(CustomerDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping(value = "/updateCustomer.do", method = RequestMethod.GET)
	public ModelAndView updateForm(int custid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("up",dao.detailcustomer(custid));
		return mav;
	}
	@RequestMapping(value = "/updateCustomer.do", method = RequestMethod.POST)
	public ModelAndView updateSubmit(CustomerVo c) {
		ModelAndView mav = new ModelAndView("redirect:/CustomerList.do");
		dao.updateCustomer(c);
		return mav;
	}
	
	@RequestMapping("/deleteCustomer.do")
	public ModelAndView delete(int custid) {
		ModelAndView mav = new ModelAndView("redirect:/CustomerList.do");
		mav.addObject("delete",dao.deleteCustomer(custid));
		return mav;
	}
	
	@RequestMapping(value = "/insertCustomer.do", method = RequestMethod.GET)
	public void insertForm() {
		
	}
	
	@RequestMapping(value = "/insertCustomer.do" , method = RequestMethod.POST)
	public ModelAndView insertSubmit(CustomerVo c) {
		ModelAndView mav = new ModelAndView("redirect:/CustomerList.do");
		int re = dao.insertCustomer(c);
		mav.addObject("insert", re);
		return mav;
	}
	
	@RequestMapping("/detailCustomer.do")
	public ModelAndView detailCustomer(int custid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("detail",dao.detailcustomer(custid));
		return mav;
	}
	
	@RequestMapping("/CustomerList.do")
	public ModelAndView listAll() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",dao.listAll());
		return mav;
	}
}
