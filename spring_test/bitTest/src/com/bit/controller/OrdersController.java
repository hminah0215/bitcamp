package com.bit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bit.dao.BookDao;
import com.bit.dao.CustomerDao;
import com.bit.dao.OrdersDao;
import com.bit.vo.OrdersVo;

@Controller
public class OrdersController {
	@Autowired
	private OrdersDao o_dao;
	
	@Autowired
	private CustomerDao c_dao;
	
	@Autowired
	private BookDao b_dao;
	
	public void setDao(OrdersDao dao) {
		this.o_dao = o_dao;
	}
	public void setC_dao(CustomerDao c_dao) {
		this.c_dao = c_dao;
	}
	public void setB_dao(BookDao b_dao) {
		this.b_dao = b_dao;
	}
	
	@RequestMapping(value = "/insertOrders.do", method = RequestMethod.GET)
	public ModelAndView insertForm() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("cList", c_dao.listAll(null));
		mav.addObject("bList",b_dao.listAll(null));
		return mav;
	}
	
	@RequestMapping(value = "/insertOrders.do", method = RequestMethod.POST)
	public ModelAndView insertSubmit(OrdersVo o) {
		ModelAndView mav = new ModelAndView();
		int re = o_dao.insertOrders(o);
		mav.addObject("re", re);
		

		return mav;
	}
	
	

	
	
}
