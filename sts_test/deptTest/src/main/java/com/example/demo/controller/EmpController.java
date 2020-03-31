package com.example.demo.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DaoSupport;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.DeptDao;
import com.example.demo.dao.EmpDao;
import com.example.demo.vo.EmpVo;

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

	// 사원 등록
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
		
		if(re > 0) {
			mav.setViewName("redirect:/listEmp.do");
		}else {
			mav.addObject("msg", "사원등록에 실패했습니다.");
		}

		return mav;
	}

	// 사원목록 emp view
	@RequestMapping("/listEmp.do")
	public ModelAndView listEmpView(String keyword, String searchColumn, String sortColumn,HttpSession session) {
		if(keyword == null) {
			keyword = (String)session.getAttribute("keyword");	
			searchColumn = (String)session.getAttribute("searchColumn");	
		}

		HashMap map = new HashMap();
		map.put("keyword", keyword);
		map.put("searchColumn", searchColumn);
		map.put("sortColumn", sortColumn);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", edao.listEmpView(map));
		
		session.setAttribute("searchColumn", searchColumn);
		session.setAttribute("keyword", keyword);
		
		return mav;
	}
}
