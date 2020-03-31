package com.bit.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bit.dao.BookDao;
import com.bit.vo.BookVo;

@Controller
public class BookController {

	@Autowired
	private BookDao dao;

	public void setDao(BookDao dao) {
		this.dao = dao;
	}

	// 도서 목록
	@RequestMapping("/listBook.do")
	public ModelAndView listBook(String keyword, String searchColumn, String sortColumn,HttpSession session, String all) {
		
		if(keyword == null) {
			keyword = (String)session.getAttribute("keyword");	
			searchColumn = (String)session.getAttribute("searchColumn");	
		}
		
		if(all != null) {
			keyword = null;
			searchColumn = null;
		}
		HashMap map = new HashMap();
		map.put("keyword", keyword);
		map.put("searchColumn", searchColumn);
		map.put("sortColumn", sortColumn);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", dao.listAll(map));
	
		session.setAttribute("searchColumn", searchColumn);
		session.setAttribute("keyword", keyword);
		
		return mav;
	}

	// 도서 상세보기
	@RequestMapping("/detailBook.do")
	public ModelAndView detailBook(int bookid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("b", dao.getBook(bookid));
		return mav;
	}

	// 도서 등록

	@RequestMapping(value = "/insertBook.do", method = RequestMethod.GET)
	public void insertForm() {

	}

	@RequestMapping(value = "/insertBook.do", method = RequestMethod.POST)
	public ModelAndView insertOK(BookVo b) {
		ModelAndView mav = new ModelAndView();
		int re = dao.insertBook(b);
		if (re > 0) {
			mav.setViewName("redirect:/listBook.do");
		} else {
			mav.addObject("msg", "도서등록에 실패하였습니다.");
		}
		return mav;
	}

	// 도서 수정
	@RequestMapping(value = "/updateBook.do", method = RequestMethod.GET)
	public ModelAndView updateform(int bookid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("b", dao.getBook(bookid));
		return mav;
	}

	@RequestMapping(value = "/updateBook.do", method = RequestMethod.POST)
	public ModelAndView updatesubmit(BookVo b) {
		ModelAndView mav = new ModelAndView();
		int re = dao.updateBook(b);
		if (re > 0) {
			mav.setViewName("redirect:/listBook.do");
		} else {
			mav.addObject("msg", "수정에 실패하였습니다.");
		}
		return mav;
	}

	// 도서 삭제
	@RequestMapping("/deleteBook.do")
	public ModelAndView delete(int bookid) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/listBook.do");
		int re = dao.deleteBook(bookid);
		if (re <= 0) {
			mav.addObject("msg", "도서삭제에 실패하였습니다.");
		}
		return mav;
	}

}
