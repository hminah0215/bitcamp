package com.bit.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.action.BitAction;
import com.bit.action.DeleteBoardAction;
import com.bit.action.DeleteBoardOKAction;
import com.bit.action.DetailBoardAction;
import com.bit.action.InsertBoardAction;
import com.bit.action.InsertBoardOKAction;
import com.bit.action.ListBoardAction;

/**
 * Servlet implementation class BitController
 */

// 게시물 삭제기능을 추가해 봅니다.


@WebServlet("*.do")
public class BitController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	//사용자의 요청별 일처리 담당자를 map에 등록해 둡시다.	
	HashMap<String, BitAction> map = new HashMap<String, BitAction>();
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BitController() {
        super();
    }
    
    
    @Override
	public void init(ServletConfig config) throws ServletException {
//		super.init(config);
    	
    	String path = config.getServletContext().getRealPath("WEB-INF");
    	try {
			FileReader fr = new FileReader(path+ "/bit.properties");
			Properties prop = new Properties();
			prop.load(fr);
			
			Set set= prop.keySet();			//프로퍼티로 부터 키를 모두 뽑아옴(왼쪽의 서비스명 .do)
			Iterator iter = set.iterator();	//set은 루프를 못돌기때문에 이터레이터 사용
			
			while( iter.hasNext() ) {
				String key = (String)iter.next();
				String clsName = (String)prop.get(key);
				
				map.put( key, (BitAction)Class.forName(clsName).newInstance() );
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}


	@Override
	public void init() throws ServletException {
//		super.init();
    	
    	//map에 사용자의 요청별 일처리 담당자 객체를 생성하여 담아요. 리퀘스트맵핑
//    	map.put("/insertBoard.do", new InsertBoardAction());
//    	map.put("/insertBoardOK.do", new InsertBoardOKAction());
//    	map.put("/listBoard.do", new ListBoardAction());
//    	map.put("/detailBoard.do", new DetailBoardAction());
//    	map.put("/deleteBoard.do", new DeleteBoardAction());
//    	map.put("/deleteBoardOK.do", new DeleteBoardOKAction());
    	
	}


	// 메소드
    public void proRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	String uri = request.getRequestURI();
    	String cmd = uri.substring(uri.lastIndexOf("/")) ;
    	String view = "";
    	
    	BitAction action = map.get(cmd);
    	view = action.proRequest(request, response);
    	
    	RequestDispatcher dispatcher = request.getRequestDispatcher(view);
    	dispatcher.forward(request, response);
    }
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		proRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		proRequest(request, response);
	}

}
