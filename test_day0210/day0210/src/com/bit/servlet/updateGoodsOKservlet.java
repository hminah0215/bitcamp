package com.bit.servlet;

import java.io.File;
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
@WebServlet("/updateGoodsOK.do")	//요청하는 맵핑
public class updateGoodsOKservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateGoodsOKservlet() {
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
		
		request.setCharacterEncoding("utf-8");
        
       String path = request.getRealPath("upload");
       System.out.println("path:"+path);
       MultipartRequest multi = new MultipartRequest(request, path, "utf-8");
       
       GoodsDAO dao = new GoodsDAO();
       int no = Integer.parseInt(multi.getParameter("no"));
       String oldFname = dao.getGoods(no).getFname();
       String fname = multi.getOriginalFileName("fname");
      
       GoodsVO g= new GoodsVO();
       g.setNo(no);
       g.setItem(multi.getParameter("item"));
       g.setPrice(Integer.parseInt(multi.getParameter("price")));
       g.setQty(Integer.parseInt(multi.getParameter("qty")));
//     g.setFname(multi.getParameter("fname"));
    
       g.setFname(oldFname);
       if(fname != null) {
           g.setFname(fname);
       }
        
       g.setDetail(multi.getParameter("detail"));
        
       int re = dao.updateGoods(g);
       if(re > 0) {
           if(fname != null) {
               File file = new File(path + "/" + oldFname);
               file.delete();
           }
           response.sendRedirect("listGoods.do");
       }else {
           response.setContentType("text/html;charset=utf-8");
           PrintWriter out = response.getWriter();
           out.println("상품수정에 실패하였습니다.");
           out.close();
       }
        
   }

}
