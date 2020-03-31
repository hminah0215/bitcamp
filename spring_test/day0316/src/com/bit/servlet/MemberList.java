package com.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.dao.MemberDao;
import com.bit.vo.MemberVo;
import com.google.gson.Gson;

/**
 * Servlet implementation class MemberList
 */
@WebServlet("/MemberList")
public class MemberList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberList() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/plaine;charset=UTF-8");
		PrintWriter out = response.getWriter();
		//String str = "[";
		// str += "{\"name\":\"홍길동\", \"age\":30},";
		// str += "{\"name\":\"이순신\", \"age\":40},";
		// str += "{\"name\":\"유관순\", \"age\":20}";

		MemberDao dao = new MemberDao();
		ArrayList<MemberVo> list = dao.listAll();
		//for (MemberVo m : list) {
		//	str += "{\"name\":\"" + m.getName() + "\", \"age\":" + m.getAge() + "},";
		//}

		//str = str.substring(0, str.length() - 1);	//마지막 ,를 빼기위한 방법중 하나
		//str += "]";
		
		Gson gson = new Gson();
		String str = gson.toJson(list);	//위처럼 str 더럽게 안써도 되는 것 
		System.out.println(str);
		out.write(str);
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
