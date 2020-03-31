package com.bit.exam04;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SmsTEST {
	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("com/bit/exam04/beans.xml");
		SystemMonitor sm = (SystemMonitor) ac.getBean("sm");
		sm.monitor();

	}
}
