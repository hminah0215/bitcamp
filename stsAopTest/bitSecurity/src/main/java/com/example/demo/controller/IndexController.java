package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.vo.MemberVo;

@Controller
public class IndexController {
	
	@GetMapping("/")
	public String index( Model mo ) {	//상태유지 model
		mo.addAttribute("m",new MemberVo("tiger","1234","홍길동","USER"));
		return "index";
	}
	
	@GetMapping("/login")
	public String login() {
		
		return "login";
	}
}
