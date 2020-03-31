package com.bit.exam03;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class HelloApp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext context = new ClassPathXmlApplicationContext("com/bit/exam03/beans02.xml");
		MessageBean mb = (MessageBean)context.getBean("mb");
		mb.sayHello("홍길동");
	}

}
