package com.bit.exam03;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MainTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("com/bit/exam03/beans.xml");
		ConnectionProvider cp = (ConnectionProvider)ac.getBean("cp");
		cp.getConnection();
		System.out.println("연결정보: "+ cp);
	}

}
