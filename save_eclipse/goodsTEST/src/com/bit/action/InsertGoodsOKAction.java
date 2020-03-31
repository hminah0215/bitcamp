package com.bit.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.dao.GoodsDAO;
import com.bit.vo.GoodsVO;
import com.oreilly.servlet.MultipartRequest;

public class InsertGoodsOKAction implements BitAction {

	@Override
	public String proInter(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String path = request.getRealPath("upload");
		request.setCharacterEncoding("utf-8");
		MultipartRequest multi = new MultipartRequest(request, path, "utf-8");

		GoodsVO g = new GoodsVO();
		
		g.setItem(multi.getParameter("item"));
		g.setPrice(Integer.parseInt(multi.getParameter("price")));
		g.setQty(Integer.parseInt(multi.getParameter("qty")));
		g.setFname(multi.getOriginalFileName("fname"));
		g.setDetail(multi.getParameter("detail"));

		GoodsDAO dao = new GoodsDAO();
		int re = dao.insertGoods(g);
		
		request.setAttribute("re", re);

		return "insertGoodsOK.jsp";
	}

}
