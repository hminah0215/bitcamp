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
	
	//원페이지로 처리 하게 한다면!?
	@RequestMapping(value = "/all.do", method = RequestMethod.GET)//get방식으로 요청되면
	public ModelAndView from(int custid) {						//custid를 받아온다
		ModelAndView mav = new ModelAndView();
		
		if( custid == 0 ) { 	//custid가 0 이라는 이야기는, 없는고객 즉 고객등록해야할때라는것
			mav.addObject("msg","고객등록");
			mav.addObject("op","insert"); 	//고객등록이라고 구분해준다.
		}else {					// custid 가 db에 있는 custid 일때
			CustomerVo c = dao.detailcustomer(custid);
			mav.addObject("vo", c);
			mav.addObject("msg", "고객수정");
			mav.addObject("op","up");		//고객수정 구분
		}
		return mav;	
	}
	
	@RequestMapping(value = "/all.do", method = RequestMethod.POST)
	public ModelAndView all(CustomerVo c, String op) {	//op는 위에서 구분한 operation
		ModelAndView mav = new ModelAndView();
		System.out.println(op);
		
		if(op.equals("insert")) {		//op에 insert가 담겨있을때는 고객등록
			dao.insertCustomer(c);
		}else {
			dao.updateCustomer(c);	//op에 update가 담겨있을때는 고객수정
		}
		mav.setViewName("redirect:/listCustomer.do");
		return mav;	
	}
	
	
	
	
	//수정
	@RequestMapping(value = "/updateCustomer.do", method = RequestMethod.GET)
	public ModelAndView updateForm(int custid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("up", dao.detailcustomer(custid));
		return mav;
	}

	@RequestMapping(value = "/updateCustomer.do", method = RequestMethod.POST)
	public ModelAndView updateSubmit(CustomerVo c) {
		ModelAndView mav = new ModelAndView("redirect:/listCustomer.do");
		dao.updateCustomer(c);
		return mav;
	}
	
	//삭제
	@RequestMapping("/deleteCustomer.do")
	public ModelAndView delete(int custid) {
		ModelAndView mav = new ModelAndView("redirect:/listCustomer.do");
		mav.addObject("delete", dao.deleteCustomer(custid));
		return mav;
	}
	
	//등록
	@RequestMapping(value = "/insertCustomer.do", method = RequestMethod.GET)
	public void insertForm() {

	}

	@RequestMapping(value = "/insertCustomer.do", method = RequestMethod.POST)
	public ModelAndView insertSubmit(CustomerVo c) {
		ModelAndView mav = new ModelAndView("redirect:/listCustomer.do");
		int re = dao.insertCustomer(c);
		mav.addObject("insert", re);
		return mav;
	}
	
	//상세보기
	@RequestMapping("/detailCustomer.do")
	public ModelAndView detailCustomer(int custid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("detail", dao.detailcustomer(custid));
		return mav;
	}
	
	//목록
	@RequestMapping("/listCustomer.do") 
	public ModelAndView listAll() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", dao.listAll());
		return mav;
	}

}
