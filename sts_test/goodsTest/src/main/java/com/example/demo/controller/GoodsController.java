package com.example.demo.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

	// 상품 삭제
	@RequestMapping("/deleteGoods.do")
	public ModelAndView delete(int no, HttpSession session, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("redirect:/listGoods.do");

		String oldFname = dao.detailGoods(no).getFname();
		int re = dao.deleteGoods(no);

		String str = "상품 삭제에 실패하였습니다.";

		if (re > 0) {
			str = "상품 삭제에 성공하였습니다.";
			String path = request.getRealPath("img");
			File file = new File(path + "/" + oldFname);
			file.delete();
		}
		return mav;
	}

	// 상품 수정
	@RequestMapping(value = "/updateGoods.do", method = RequestMethod.GET)
	public ModelAndView updateForm(int no) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("up", dao.detailGoods(no));
		return mav;
	}

	@RequestMapping(value = "/updateGoods.do", method = RequestMethod.POST)
	public ModelAndView updateSubmit(GoodsVo g, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("redirect:/listGoods.do");

		String oldFname = g.getFname();
		String fname = null;
		
		String path = request.getRealPath("img");
		MultipartFile uploadFile = g.getUploadFile();

		if (uploadFile != null) {
			fname = uploadFile.getOriginalFilename();
			if (fname != null && !fname.equals("")) {
				g.setFname(fname);
			}

			try {
				byte[] data = uploadFile.getBytes();
				// 등록에 성공하면 파일복사처리
				FileOutputStream fos = new FileOutputStream(path + "/" + fname);
				fos.write(data);

			} catch (Exception e) {
				System.out.println("예외발생: " + e.getMessage());
			}
		
		}
		String msg = "상품수정에 성공하였습니다.";
		int re = dao.updateGoods(g);
		if(re > 0 && fname != null && !fname.equals("")) {
			File file = new File(path +"/" +oldFname);
			file.delete();
		}
		return mav;

	}

	// 상품 상세보기

	@RequestMapping("/detailGoods.do")
	public ModelAndView detailGoods(int no) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("g", dao.detailGoods(no));
		return mav;
	}

	// 상품 등록
	@RequestMapping(value = "/insertGoods.do", method = RequestMethod.GET)
	public void insertForm() {

	}

	@RequestMapping(value = "/insertGoods.do", method = RequestMethod.POST)
	public ModelAndView insertSubmit(GoodsVo g, HttpSession session, HttpServletRequest request) {

		String path = request.getRealPath("img");
		System.out.println("path: " + path);

		// 성공하면 목록으로 바로 보내게! 이렇게하거나 setview하면 됨
		ModelAndView mav = new ModelAndView("redirect:/listGoods.do");
		String msg = "상품등록에 성공했습니다.";

		MultipartFile uploadFile = g.getUploadFile();
		String fname = uploadFile.getOriginalFilename();

		// 파일이름을 vo의 fname에 넣어주기
		g.setFname(fname);

		int re = dao.insertGoods(g);
		if (re <= 0) {
			msg = "상품등록에 실패했습니다.";
		} else {
			try {
				byte[] data = uploadFile.getBytes();

				// 등록에 성공하면 파일복사처리
				FileOutputStream fos = new FileOutputStream(path + "/" + fname);
				fos.write(data);
				fos.close();
			} catch (Exception e) {
				System.out.println("예외발생: " + e.getMessage());
			}
		}
		session.setAttribute("msg", msg); // 성공하면 리스트로 바로가게해서 세션에 상태유지
		return mav;
	}

	// 상품 목록
	@RequestMapping("/listGoods.do")
	public ModelAndView listGoods(String keyword, String searchColumn, String sortColumn, 
					HttpSession session, @RequestParam(value = "pageNUM", defaultValue = "1") int pageNUM) 
	{
		
		if (keyword == null) {
			keyword = (String) session.getAttribute("keyword");
			searchColumn = (String) session.getAttribute("searchColumn");
		}

		HashMap map = new HashMap();
		
		int start = (pageNUM-1) * GoodsDao.pageSIZE + 1;
		int end = start + GoodsDao.pageSIZE - 1;
		
		map.put("keyword", keyword);
		map.put("searchColumn", searchColumn);
		map.put("sortColumn", sortColumn);
		map.put("start", start);
		map.put("end", end);
		
		System.out.println(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("title", "상품목록");
		mav.addObject("list", dao.listAll(map));
		
		mav.addObject("totalPage", dao.totalPage);
		System.out.println("전체페이지수: "+ GoodsDao.totalPage);
		
		session.setAttribute("searchColumn", searchColumn);
		session.setAttribute("keyword", keyword);

		return mav;
	}
}
