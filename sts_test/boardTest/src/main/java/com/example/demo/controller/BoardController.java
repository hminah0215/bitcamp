package com.example.demo.controller;

import java.io.File;
import java.io.FileOutputStream;
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

import com.example.demo.dao.BoardDao;
import com.example.demo.vo.BoardVo;

@Controller
public class BoardController {

	public static int pageSIZE = 2;
	public static int totalPage = 1;
	public static int totalRecord = 0;
	
	
	
	@Autowired
	private BoardDao dao;

	public void setDao(BoardDao dao) {
		this.dao = dao;
	}

	// 게시글 삭제
	@RequestMapping(value = "/deleteBoard.do", method = RequestMethod.GET)
	public ModelAndView deleteForm(int no) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("no", dao.detailBoard(no));
		return mav;
	}

	@RequestMapping(value = "/deleteBoard.do", method = RequestMethod.POST)
	public ModelAndView deleteSubmit(int no, String pwd, HttpSession session, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("redirect:/listBoard.do");

		String fname = dao.detailBoard(no).getFname();
		HashMap map = new HashMap();
		map.put("no", no);
		map.put("pwd", pwd);

		int re = dao.deleteBoard(map);

		if (re > 0 && fname != null && !fname.equals("")) {
			String path = request.getRealPath("upload");
			File file = new File(path + "/" + fname);
			file.delete();
		}
		return mav;
	}

	// 게시글 수정
	@RequestMapping(value = "/updateBoard.do", method = RequestMethod.GET)
	public ModelAndView updateForm(int no) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("up", dao.detailBoard(no));
		return mav;
	}

	@RequestMapping(value = "/updateBoard.do", method = RequestMethod.POST)
	public ModelAndView updateSubmit(BoardVo b, HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView("redirect:/listBoard.do");

		String path = request.getRealPath("upload");
		String oldFname = b.getFname();
		String fname = null;
		MultipartFile uploadFile = b.getUploadFile();

		if (uploadFile != null) {
			fname = uploadFile.getOriginalFilename();
			if (fname != null && !fname.equals("")) {
				b.setFname(fname);

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

		}

		int re = dao.updateBoard(b);

		// 수정에 성공했고, 파일도 수정했고, 원래게시물에 파일이 있었다면...! 파일 지운다
		if (re > 0 && fname != null && !fname.equals("") && oldFname != null && !oldFname.equals("")) {
			File file = new File(path + "/" + oldFname);
			file.delete();
		}

		return mav;

	}

	// 게시글 상세보기
	@RequestMapping("/detailBoard.do")
	public ModelAndView detailBoard(int no) {
		
		dao.updateHit(no);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("b", dao.detailBoard(no));
		return mav;
	}

	// 게시글 등록
	
	// 답글처리까지 해야하니 모델앤뷰를 반환해야함, RequestParam : pdf 스프링 mvc 40쪽
	@RequestMapping(value = "/insertBoard.do", method = RequestMethod.GET)
	public ModelAndView insertForm(@RequestParam(value = "no", defaultValue = "0") int no) { 
		ModelAndView mav = new ModelAndView();
		mav.addObject("no",no);
		return mav;
	}

	@RequestMapping(value = "/insertBoard.do", method = RequestMethod.POST)
	public ModelAndView insertSubmit(BoardVo b, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("redirect:/listBoard.do");

		int pno = b.getNo();	//부모 글 번호, 0이면 새글 0이아니면 답글
		
		int no = dao.nextNo();	//진짜 게시물의 번호
		int b_ref = no;
		int b_level = 0;
		int b_step = 0;

		//만약에 답글쓰기라면...
		if(pno != 0) {
			BoardVo p = dao.detailBoard(pno);
			b_ref = p.getB_ref();
			b_level = p.getB_level();
			b_step = p.getB_step();
			
			HashMap map = new HashMap();
			map.put("b_ref", b_ref);
			map.put("b_step", b_step);
			dao.updateStep(map);
			
			b_level++;
			b_step++;
		}
		
		b.setNo(no);
		b.setB_ref(b_ref);
		b.setB_level(b_level);
		b.setB_step(b_step);

		b.setIp(request.getRemoteAddr());

		String path = request.getRealPath("upload");
		System.out.println("path: " + path);
		MultipartFile uploadFile = b.getUploadFile();
		String fname = null;

		if (uploadFile != null) {
			fname = uploadFile.getOriginalFilename();
			if (fname != null && !fname.equals("")) {
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
		}
		b.setFname(fname);

		int re = dao.insertBoard(b);

		return mav;
	}

	// 게시판 목록
	@RequestMapping("/listBoard.do")
	public ModelAndView listBoard(@RequestParam(value = "pageNUM", defaultValue = "1") int pageNUM) {
		
		totalRecord = dao.totalRecord();
		totalPage = (int)Math.ceil(totalRecord / (double)pageSIZE);
		
		int start = (pageNUM - 1 ) * pageSIZE + 1;
		int end = start + pageSIZE - 1;
		
		HashMap map = new HashMap();
		
		System.out.println("전체페이지: " + totalPage);
		System.out.println("스타트: " + start);
		System.out.println("끝: " + end);
		
		map.put("start", start);
		map.put("end", end);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("head", "게시판 목록");
		mav.addObject("list", dao.listAll(map));
		mav.addObject("totalPage", totalPage);
		return mav;
	}
}
