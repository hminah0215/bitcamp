package com.bit.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertGoodsAction implements BitAction {

	@Override
	public String proInter(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		
//		int no = Integer.parseInt(request.getParameter("no"));
//		request.setAttribute("no", no);
		
		
		return "insertGoods.jsp";
	}

}
