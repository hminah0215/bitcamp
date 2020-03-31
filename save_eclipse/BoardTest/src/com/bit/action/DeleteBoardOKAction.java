package com.bit.action;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.dao.BoardDAO;
import com.bit.vo.BoardVO;

public class DeleteBoardOKAction implements BitAction {

	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		BoardDAO dao = new BoardDAO();
		request.setCharacterEncoding("utf-8");
	
		String path = request.getRealPath("upload");
	
		int no = Integer.parseInt(request.getParameter("no"));
		String pwd = request.getParameter("pwd");
		String oldFname = dao.getBoard(no).getFname();
		
		int re = dao.deleteBoard(no, pwd);
		if(re > 0) {
			if(oldFname != null) {
				File file = new File(path + "/" + oldFname);
				file.delete();
			}
		}
		
		
		request.setAttribute("re", re);
		
		return "deleteBoardOK.jsp";
	}

}
