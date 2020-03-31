package com.bit.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.dao.BoardDAO;

public class ListBoardAction implements BitAction {

	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = request.getRealPath("upload");
		System.out.println(path);
		int pageNUM = 1; 
		if(request.getParameter("pageNUM") != null) {
			pageNUM = Integer.parseInt(request.getParameter("pageNUM"));
		}
		
		BoardDAO dao = new BoardDAO();
		request.setAttribute("list", dao.listAll(pageNUM));
		
		return "listBoard.jsp";
	}

}
