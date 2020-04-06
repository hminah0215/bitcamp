package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dao.MemberDao;
import com.example.demo.entity.Member100;

@RestController
public class MemberController {
	
	@Autowired
	private MemberDao dao;
	
	public void setDao(MemberDao dao) {
		this.dao = dao;
	}

	@GetMapping("/insertMember")
	public String insertMember() {
		dao.save(new Member100("tiger",PasswordEncoderFactories.createDelegatingPasswordEncoder()
								.encode("tiger"),"홍길동","USER"));
		dao.save(new Member100("master",PasswordEncoderFactories.createDelegatingPasswordEncoder()
								.encode("1234"),"홍길동","ADMIN"));
		return "ok";
		
	}
}
