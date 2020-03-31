package com.bit.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.dao.BoardDAO;
import com.bit.vo.BoardVO;
import com.oreilly.servlet.MultipartRequest;

public class InsertBoardOKAction implements BitAction {

	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String path = request.getRealPath("upload");
		request.setCharacterEncoding("utf-8");
		MultipartRequest multi = new MultipartRequest(request, path, "utf-8");
		
		BoardVO b = new BoardVO();
		b.setNo(Integer.parseInt(multi.getParameter("no")));
		b.setTitle(multi.getParameter("title"));
		b.setWriter(multi.getParameter("writer"));
		b.setPwd(multi.getParameter("pwd"));
		b.setContent(multi.getParameter("content"));
		b.setFname(multi.getOriginalFileName("fname"));
		b.setIp(request.getRemoteAddr());
		
		BoardDAO dao = new BoardDAO();
		int re = dao.insertBoard(b);
		if(re > 0) {
			request.setAttribute("msg", "게시물등록에 성공하였습니다.");
		}else {
			request.setAttribute("msg", "게시물등록에 실패하였습니다.");
		}
		
		return "insertBoardOK.jsp";
	}

}
