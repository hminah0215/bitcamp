package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BoardController {
	
	//all 이라는 네임스페이스를 타고오면 누구나 접근가능하게 꾸밀거고
	@GetMapping("/all/list")
	public String list() {
		return "list";
	}
	//admin 이라는 네임스페이스를 타고오면 로그인하고 admin만 접근가능하게 할거고 
	@GetMapping("/admin/cmd1")
	public String cmd1() {
		return "서비스1";
	}
	
	//로그인을 해야지만 접근할 수 있어요라고 할거임
	@GetMapping("/insert")
	public String insert() {
		return "insert";
	}
}
