package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.MemberService;
import com.example.demo.vo.MemberVo;

@RestController
public class MemberController {

	@Autowired
	private MemberService ms;
	
	public void setMs(MemberService ms) {
		this.ms = ms;
	}

	@RequestMapping("/all/insertMember")
	public String insertMember(MemberVo m) {
		System.out.println("회원정보"+m);
		int re = ms.insertMember(m);
		return "ok";
	}
}