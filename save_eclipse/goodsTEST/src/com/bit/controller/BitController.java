package com.bit.controller;

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

/**
 * Servlet implementation class BitController
 */
@WebServlet("*.do")
public class BitController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	//map생성
	HashMap<String, BitAction > map = new HashMap<String, BitAction>();
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BitController() {
        super();
        
    }

    
    //맵핑
    @Override
	public void init(ServletConfig config) throws ServletException {
//		super.init(config);
    	
    	String path = config.getServletContext().getRealPath("WEB-INF");
    	try {
    		FileReader fr = new FileReader(path + "/bit.properties");
    		Properties prop = new Properties();
    		prop.load(fr);
    		
    		Set set = prop.keySet();
    		Iterator iter = set.iterator();
    		
    		while( iter.hasNext() ) {
    			String key = (String)iter.next();
    			String clsName = (String)prop.get(key);
    			
    			System.out.println("요청명: " + key);
    			System.out.println("클래스명: " + clsName);
    			
    			map.put( key, (BitAction)Class.forName(clsName).newInstance());
    			System.out.println("-------------------------------------------------------------------");
    		}
    	}catch (Exception e) {
			System.out.println("예외발생: " + e.getMessage());
		}
	}



	//메소드 생성
	private void proRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String uri = request.getRequestURI();
		String cmd = uri.substring(uri.lastIndexOf("/"));
		String view = "";
		
		BitAction action = map.get(cmd);
		view = action.proInter(request, response);
		
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
