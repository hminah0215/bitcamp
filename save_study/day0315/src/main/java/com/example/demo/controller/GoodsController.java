package com.example.demo.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.tomcat.util.http.fileupload.UploadContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.GoodsDao;
import com.example.demo.vo.GoodsVo;
@Controller
public class GoodsController {
	@Autowired
	private GoodsDao dao;

	public void setDao(GoodsDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping(value = "/insertGoods.do", method = RequestMethod.GET)
	public void insert() {
		
	}
	
	@RequestMapping(value = "/insertGoods.do", method = RequestMethod.POST)
	public ModelAndView insertGoods(GoodsVo g, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		String realpath= request.getRealPath("img");
		MultipartFile uploadFile = g.getUploadFile();
		String fname = uploadFile.getOriginalFilename();	//새로운 파일의 이름을 가져옴 
		g.setFname(fname);
		int re = dao.InsertGoods(g);
		
		if( re > 0 ) {
			//파일을 읽어오는 방법중 byte 타입 
			try {
				byte[] data = uploadFile.getBytes();
				FileOutputStream fos = new FileOutputStream(realpath +"/" +fname);
				fos.write(data);
				fos.close();
				mav.setViewName("redirect:/listGoods.do");
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}
		
		return mav;
	}
	
	@RequestMapping("/deleteGoods.do")
	public ModelAndView deleteGoods(int no) {
		ModelAndView mav = new ModelAndView();
		int re = dao.deleteGoods(no);
		mav.addObject("delete", re);
		mav.setViewName("redirect:/listGoods.do");
		return mav;
	}
	
	@RequestMapping("/detailGoods.do")
	public ModelAndView detailGoods(int no ,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		System.out.println(request.getRealPath("img"));
		mav.addObject("detail", dao.detailGoods(no));
		return mav;
	}
	
	@RequestMapping("/listGoods.do")
	public ModelAndView listGoods(String search,String combo) {
		ModelAndView mav = new ModelAndView();
		if(combo == null) {
			combo = "";
		}
		if(search == null) {
			search = "";
		}
		System.out.println(combo);
		System.out.println(search);
		
		HashMap map = new HashMap();
		map.put("search", search);
		map.put("combo", combo);
			
		mav.addObject("list",dao.goodsList(map));
		System.out.println(dao.goodsList(map));
		return mav;
	}
}
