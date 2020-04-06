package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.dao.CategoryDao;
import com.example.demo.dao.ProductDao;
import com.example.demo.entity.Product;

@Controller
public class ProductController {
	@Autowired
	private ProductDao dao;

	public void setDao(ProductDao dao) {
		this.dao = dao;
	}
	
	@Autowired
	private CategoryDao cdao;
	
	public void setCdao(CategoryDao cdao) {
		this.cdao = cdao;
	}

	@GetMapping("/insert")
	public String insertForm(Model m) {
		m.addAttribute("clist",cdao.findAll());//모든 카테고리 종류를 상태유지
		return "insert";
	}
	
	@PostMapping("/insert")
	public String insertProduct(Product p) {
		dao.save(p);
		return "redirect:/list";
	}
	
	@GetMapping("/list")
	public void list(Model m) {
		m.addAttribute("title","비트 쇼핑몰 상품목록");
		m.addAttribute("list",dao.findAll());
	}
	
	@GetMapping("/delete")
	public String delete(int id) {
		dao.deleteById(id);
		return "redirect:/list";
	}
	
	@GetMapping("/edit")
	public void edit(int id,Model m) {
		m.addAttribute("p",dao.getOne(id));
		
	}

}
