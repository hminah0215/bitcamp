package com.bit.action;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.dao.GoodsDAO;
import com.bit.vo.GoodsVO;
import com.oreilly.servlet.MultipartRequest;

public class UpdateGoodsOKAction implements BitAction {

	@Override
	public String proInter(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		String path = request.getRealPath("upload");
		
		GoodsDAO dao = new GoodsDAO();
		MultipartRequest multi = new MultipartRequest(request, path, "utf-8");

		//원래있던 사진은 수정시에 지워져야한다.
		int no = Integer.parseInt(multi.getParameter("no"));
		String fname = multi.getOriginalFileName("fname");
		String oldFname = dao.getGoods(no).getFname();
		
		GoodsVO g = new GoodsVO();
		g.setNo(no);
		g.setItem(multi.getParameter("item"));
		g.setPrice(Integer.parseInt(multi.getParameter("price")));
		g.setQty(Integer.parseInt(multi.getParameter("qty")));
		g.setFname(oldFname);
		g.setDetail(multi.getParameter("detail"));
		
		//상품사진을 수정하는거면, 새로운 상품사진이름이 널이 아니라면! 
		if(fname != null) {
			g.setFname(fname);
		}
		
		int re = dao.updateGoods(g);
		if( re > 0) {
			if(fname != null) {
				File file = new File(path + "/" +oldFname);
				file.delete();
			}
		}
		
		
		request.setAttribute("re", re);
		
		return "updateGoodsOK.jsp";
	}

}
