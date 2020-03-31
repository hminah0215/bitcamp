package com.bit.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bit.dao.CustomerDao;
import com.bit.vo.CustomerVo;

@Controller
public class CustomerController {
	
	//알아서 의존관계를 설정해줘! @Autowired
	@Autowired
	private CustomerDao dao;

	public void setDao(CustomerDao dao) {
		this.dao = dao;
	}
	
	// 수정 (get, post)
	@RequestMapping(value = "/updateCustomer.do", method = RequestMethod.GET)
	public ModelAndView updateform(int custid) {	
		ModelAndView mav = new ModelAndView();
		mav.addObject("c", dao.getCustomer(custid));
		return mav;
	}
	
	@RequestMapping(value = "/updateCustomer.do", method = RequestMethod.POST)
	public ModelAndView updatesubmit( CustomerVo c ) {
		ModelAndView mav = new ModelAndView();
		
		int re = dao.updateCustomer(c);
		if(re > 0) {
			mav.setViewName("redirect:/listCustomer.do");
		}else {
			mav.addObject("msg", "수정에 실패하였습니다.");
		}
		return mav;
	}
	
	// 삭제
	@RequestMapping("/deleteCustomer.do")
	public ModelAndView delete(int custid, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/listCustomer.do");
		int re = dao.deleteCustomer(custid);
		if(re <= 0) {
			session.setAttribute("msg", "고객삭제에 실패하였습니다.");
		}
		return mav;
	}

	// 등록 (get, post)
	@RequestMapping(value = "/insertCustomer.do" , method = RequestMethod.GET)
	public void insertForm() {
		
	}
	
	@RequestMapping(value = "/insertCustomer.do" , method = RequestMethod.POST)
	public ModelAndView insertSubmit(CustomerVo c) {
		ModelAndView mav = new ModelAndView();
		int re  = dao.insertCustomer(c);
		if(re > 0) {
			mav.setViewName("redirect:/listCustomer.do");
		}else {
			mav.addObject("msg", "고객등록에 실패하였습니다.");
		}
		return mav;
	}
	
	// 상세보기
	@RequestMapping("/detailCustomer.do")
	public ModelAndView getCustomer(int custid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("c", dao.getCustomer(custid));
		return mav;
	}
	
	
	// 목록
	@RequestMapping("/listCustomer.do") // view이름을 따로 설정하지 않아도 요청한 이름을 찾는다.
	public ModelAndView listCustomer(String keyword, String searchColumn, String sortColumn,HttpSession session, String all) {
		System.out.println("검색어: "+ keyword );
		
		//세션에 담긴 검색어가 우선순위가 높을까요?
		//새로 검색한 검색어가 우선순위가 높을까요?
		//==> 새로 검색한 검색어가 우선순위가 높아요!!!
		
		if(keyword == null) {
			keyword = (String)session.getAttribute("keyword");	
			searchColumn = (String)session.getAttribute("searchColumn");	
		}
		
		if(all != null) {
			keyword = null;
			searchColumn = null;
		}
		HashMap map = new HashMap();
		map.put("keyword", keyword);
		map.put("searchColumn", searchColumn);
		map.put("sortColumn", sortColumn);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", dao.listAll(map));
		
		session.setAttribute("searchColumn", searchColumn);
		session.setAttribute("keyword", keyword);
		
		return mav;
	}
	
}
