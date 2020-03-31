package com.bit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bit.dao.CustomerDAO;
import com.bit.vo.CustomerVO;

@Controller
public class UpdateCustomerController {
	@Autowired
	private CustomerDAO dao;
	
	public void setDao(CustomerDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping(value = "/updateCustomer.do", method = RequestMethod.GET)
	public ModelAndView form(int custid) {	//get방식으로 오는건 반환하는 값이 필요없다.
		ModelAndView mav = new ModelAndView();
		mav.addObject("c", dao.getCustomer(custid));
		return mav;
	}
	
	@RequestMapping(value = "/updateCustomer.do", method = RequestMethod.POST)
	public ModelAndView submit( CustomerVO c ) {
		ModelAndView mav = new ModelAndView();
		
		int re = dao.updateCustomer(c);
		if(re > 0) {
			mav.setViewName("redirect:/listCustomer.do");
		}else {
			mav.addObject("msg", "수정에 실패하였습니다.");
		}
		return mav;
	}
}
