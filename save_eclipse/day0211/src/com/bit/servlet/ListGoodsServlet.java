package com.bit.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.dao.GoodsDAO;

/**
 * Servlet implementation class listGoodsServlet
 */
@WebServlet("/goods/listGoods.do")
public class ListGoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListGoodsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String view = "listGoods.jsp";
		
		int pageNUM = 1;
		if(request.getParameter("pageNUM") != null) {
			pageNUM = Integer.parseInt(request.getParameter("pageNUM"));
		}
		System.out.println("페이지번호 :" +pageNUM);
		
		GoodsDAO dao = new GoodsDAO();
		request.setAttribute("list", dao.listAll(pageNUM));
		
		//페이징처리
//		request.setAttribute("totalPage", dao.totalPage);
		
		//만약 현재페이지가 1,2,3,4,5 라면 startPage = 1
		//페이지 그룹   이전 6 7 8 9 10 다음
		//현재 페이지번호는 pageNUM
		//한화면에 보여줄 페이지수는 pageGROUP
		int startPage = (pageNUM -1)/ dao.pageGROUP * dao.pageGROUP +1 ;
		int endPage = startPage + dao.pageGROUP - 1 ;
		
		if(endPage > dao.totalPage) {
			endPage = dao.totalPage;
		}

		String pageStr = "";
		
		if(startPage > 1) {
			pageStr = pageStr + "<a href='listGoods.do?pageNUM="+(startPage - 1)+"'>이전</a>&nbsp;";
		}
		
		for(int i = startPage; i <= endPage ; i++) {
			pageStr = pageStr + "<a href='listGoods.do?pageNUM="+i+"'>"+i+"</a>&nbsp;&nbsp;&nbsp;";

		}
		
		if(endPage < dao.totalPage) {
			pageStr = pageStr + "<a href='listGoods.do?pageNUM="+(endPage + 1)+"'>다음</a>&nbsp;";
		}
		
		request.setAttribute("pageStr", pageStr);
		
		
//		request.setAttribute("startPage", startPage);
//		request.setAttribute("endPage", endPage);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
