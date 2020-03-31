package com.bit.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller							//사용자의 요청에 의해 동작하는 클래스입니다 라는걸 알려줌
public class HelloController {
	
	@RequestMapping("/listMember.do")
	public ModelAndView listMember() {
		ModelAndView mav = new ModelAndView();
	
		ArrayList<String> list = new ArrayList<String>();
		list.add("홍길동");
		list.add("이순신");
		list.add("김유신");
		list.add("유관순");
		list.add("강감찬");
		
		mav.addObject("list", list);
		mav.setViewName("listMember");
		return mav;

	}
	
	@RequestMapping("/hello.do")	//hello.do라는 요청일때 동작합니다
	public ModelAndView hello() {	//반환하는 타입이 ModelAndView, 서블릿에있는걸 선택해야함
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("hello"); 	//뷰를 잡을 경로와 확장자는 자동으로 설정되도록 할수있다.
		mav.addObject("msg", "안녕하세요.");
		mav.addObject("year", 2020);
		return mav;		
	}
}
