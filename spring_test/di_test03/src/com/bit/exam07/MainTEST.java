package com.bit.exam07;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MainTEST {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext ac = new ClassPathXmlApplicationContext("com/bit/exam07/beans.xml");
		WriteArticleServiceImpl ws = (WriteArticleServiceImpl) ac.getBean("ws");
		ws.pro();
	}

}
