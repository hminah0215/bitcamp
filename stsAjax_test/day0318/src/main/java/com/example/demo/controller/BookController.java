package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dao.BookDao;
import com.example.demo.vo.BookVo;
import com.google.gson.Gson;

@RestController		//jsp로 가지않고 바로 응답할거야
public class BookController {
	@Autowired
	private BookDao dao;
	
	public void setDao(BookDao dao) {
		this.dao = dao;
	}
	//삭제
	@RequestMapping("/deleteBook")
	public String delete(BookVo b) {
		String str ="ok";
		dao.delete(b);
		return str;
	}
	
	//수정
	@RequestMapping("/updateBook")
	public String update(BookVo b) {
		String str ="ok";
		dao.update(b);
		return str;
	}
	
	//등록
	@RequestMapping("/insertBook")
	public String insert(BookVo b) {
		String str ="ok";
		dao.insert(b);
		return str;
	}
	
	//목록
	//제이슨응답방식, utf-8 설정
	@RequestMapping(value = "/listBook.do", produces = "application/json;charset=UTF-8")
	public String list() {
		String str ="";
		List<BookVo> list = dao.listAll();
		Gson gson = new Gson();
		str = gson.toJson(list);
		return str;
	}
	
}
