package com.example.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import com.example.demo.dao.MemberDao;


@Controller
public class AdminController {
	@Autowired
	private MemberDao dao;

	public void setDao(MemberDao dao) {
		this.dao = dao;
	}
	
	@GetMapping("/admin/listMember")
	public void listMember(Model model) {
		model.addAttribute("list", dao.listMember());
	}

	
}
