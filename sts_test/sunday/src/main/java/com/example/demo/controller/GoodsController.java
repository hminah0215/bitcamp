package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.GoodsDao;
import com.example.demo.vo.GoodsVo;

@Controller
public class GoodsController {
	@Autowired	
	//객체 자동화, 단점: 한 개체당 한번씩 써줘야한다. 다오가 여러개라면 다 한번씩 써야함 
	private GoodsDao dao;	//dao객체 선언, dao에 있는 모든 클래스에 접근한다

	public void setDao(GoodsDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping(value = "/insertGoods.do" , method = RequestMethod.GET)
	public void insertForm() {
	
	}
	@RequestMapping(value = "/insertGoods.do", method = RequestMethod.POST)
	public ModelAndView insertSubmit(GoodsVo g) {
		ModelAndView mav = new ModelAndView();
		int re = dao.insertGoods(g);
		mav.addObject("add",re);
		return mav;
	}
	
	@RequestMapping("/listGoods.do")
	public ModelAndView listGoods() {	//사용자가 접근했을때 실행되는 메소드
		//뷰를 설정해줌, 상태유지가 가능하게 만들어주는 modelandview
	
		ModelAndView mav = new ModelAndView();
		List<GoodsVo> list = dao.listAll(); //manager의 결과값을 리스트에 담아준다
		mav.addObject("list",list);	//list를 들고 뷰페이지로 가! 담을변수명, 담을내용  
		//외부에서 가져올때는 꼭 쌍따옴표를 써야한다.
		
		//mav.setViewName("/listGoods");
		//이동할 뷰 이름을 적어준다.헤드 위에서 적어도 됨
		//setviewnamme에는 .do, .jsp를 붙일 필요는 없다.
		//사용자가 접근할 url, 디폴트값은 jsp 
		return mav;
	}
	
}
