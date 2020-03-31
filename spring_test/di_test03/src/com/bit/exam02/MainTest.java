package com.bit.exam02;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class MainTest {
	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("com/bit/exam02/beans.xml");
		SystemMonitor s = (SystemMonitor)ac.getBean("sm");
		s.monitor();
	}
}
