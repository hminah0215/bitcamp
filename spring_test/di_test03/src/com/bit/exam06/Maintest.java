package com.bit.exam06;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Maintest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("com/bit/exam06/beans.xml");
		ProtocolHandler ph = (ProtocolHandler) ac.getBean("ph");
		ph.execute();
	}

}
