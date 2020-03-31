package com.bit.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


// FrontController에 의해서 호출될 일처리 담당자인 모든 Action들이 
// 일처리를 위하여 오버라이딩 해야할 메소드를 proRequest로 일반화 합니다.
// 앞으로 만들어질 일처리 담당자들을 모두 BitActiond의 후손이 되도록 하려고 합니다.
// 이 메소드는 FrontController에 의해 호출 될 것이므로, 
// 사용자 요청이 담긴 request와 응답을 위한 reponse를 매개변수로 갖도록합니다.
// 즉, 서블릿의 doGet, doPost메소드의 시그너쳐(헤드)와 동일하게 설정합니다.
public interface BitAction {

	public String proRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
}
