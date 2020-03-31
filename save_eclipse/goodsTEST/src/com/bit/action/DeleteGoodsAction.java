package com.bit.action;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.dao.GoodsDAO;

public class DeleteGoodsAction implements BitAction {

	@Override
	public String proInter(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int no = Integer.parseInt(request.getParameter("no"));
		GoodsDAO dao = new GoodsDAO();
		String oldFname = dao.getGoods(no).getFname();
		String path = request.getRealPath("upload");
		int re = dao.deleteGoods(no);
		
		if(re > 0) {
			File file = new File(path + "/" +oldFname);
			file.delete();
		}
		request.setAttribute("re", re);
		return "deleteGoodsOK.jsp";
	}

}
