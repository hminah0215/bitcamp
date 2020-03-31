package com.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.dao.GoodsDAO;
import com.bit.vo.GoodsVO;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class InsertGoodsOKservlet
 */
@WebServlet("/insertGoodsOK.do")	//요청하는 맵핑
public class InsertGoodsOKservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertGoodsOKservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		String path = request.getRealPath("upload");
		System.out.println("path: "+ path);
		MultipartRequest multi = new MultipartRequest(request, path, "utf-8");
		
		GoodsVO g = new GoodsVO();
		g.setItem(multi.getParameter("item"));
		g.setPrice(Integer.parseInt(multi.getParameter("price")));
		g.setQty(Integer.parseInt(multi.getParameter("qty")));
//		g.setFname(multi.getParameter("fname"));
		g.setFname(multi.getOriginalFileName("fname"));
		g.setDetail(multi.getParameter("detail"));
		
		GoodsDAO dao = new GoodsDAO();
		int re = dao.insertGoods(g);
		
		if(re > 0) {
			response.sendRedirect("listGoods.do");
		}else {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("상품등록에 실패하였습니다.");
			out.close();
		}
	}

}
