package com.bit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bit.dao.CustomerDAO;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerDAO dao;

	public void setDao(CustomerDAO dao) {
		this.dao = dao;
	}
	
	//삭제 
	@RequestMapping("/deleteCustomer.do")
	public ModelAndView delete(int custid) {
		ModelAndView mav = new ModelAndView();
		int re = dao.deleteCustomer(custid);
		if(re > 0) {
			mav.setViewName("redirect:/listCustomer.do");
		}else {
			mav.addObject("msg", "고객삭제에 실패하였습니다.");
		}
		return mav;
	}

	//상세보기
	@RequestMapping("/detailCustomer.do")
	public ModelAndView detail(int custid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("c",dao.getCustomer(custid));
		mav.setViewName("detailCustomer");
		return mav;
	}
	
	//목록
	@RequestMapping("/listCustomer.do")
	public ModelAndView listCustomer() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", dao.listCustomer());
		mav.setViewName("listCustomer");
		return mav;
	}
}
