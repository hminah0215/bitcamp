package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloController {
	

	
	@RequestMapping(value = "list.do", method = RequestMethod.GET)
	@ResponseBody
	public String listGet() {
		return "list Get";				
	}
	
	@RequestMapping(value = "list.do", method = RequestMethod.POST)
	@ResponseBody
	public String listPost() {
		return "list Post";		
	}
	
	@RequestMapping("/insert.do")
	@ResponseBody
	public String insert(String name, int age) {
		System.out.println("이름: " + name);
		System.out.println("나이: " + age);
		return "OK";
	}
	
	
	
	@RequestMapping("/Hello.do")	
	@ResponseBody
	public String hello() {
		
		try {
			Thread.sleep(3000);
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		
		return "hello KOREA hello spring";
	}
}










