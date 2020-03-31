package com.example.demo.controller;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;


import com.example.demo.dao.DeptDao;
import com.example.demo.vo.DeptVo;
import com.google.gson.Gson;
import com.thoughtworks.xstream.XStream;


@RestController
public class ListDeptController {
	
	@Autowired
	private DeptDao dao;
	

	public void setDao(DeptDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/deleteDept.do")
	public String deleleteDept(DeptVo d) {
		System.out.println(d);
		dao.delete(d);
		String str = "ok";
		return str;
	}
	
	@RequestMapping("/updateDept.do")
	public String updateDept(DeptVo d) {
		System.out.println(d);
		dao.update(d);
		String str = "ok";
		return str;
	}
	
	
	//데이터베이스에 insert가 되도록 코드를 
	//추가하세요
	@RequestMapping("/insertDept.do")
	//public String insertDept(int dno, String dname, String dloc) {
	public String insertDept(DeptVo d) {
		System.out.println(d);
		dao.insert(d);
		String str = "ok";
		return str;
	}
	
	@RequestMapping(value = "/listDept.do", produces = "application/json;charset=UTF-8")
	public String listDept() {
		String str = "";
		List<DeptVo> list = dao.listAll();
//		ArrayList<DeptVo> list = new ArrayList<DeptVo>();		 
//		list.add(new DeptVo(100, "도토리", "서울"));
//		list.add(new DeptVo(200, "하기나름", "부산"));
//		list.add(new DeptVo(300, "출발개발팀", "서울"));
//		list.add(new DeptVo(400, "자바잡아", "광주"));
		Gson gson = new Gson();
		str = gson.toJson(list);
		return str;
	}
	
	@RequestMapping(value = "/listDeptXML.do", produces = "application/xml;charset=UTF-8")
	public String listDeptXML() {
		String str = "";
		List<DeptVo> list = dao.listAll();
		XStream stream = new XStream();
		stream.alias("dept", DeptVo.class);
		str = stream.toXML(list);
		return str;
	}
	
	
}






