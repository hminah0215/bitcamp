package com.bit.exam08;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MainTest {

	public static void main(String[] args) {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("com/bit/exam08/beans.xml");
		Person p1 = (Person)ac.getBean("p");
		Person p2 = (Person)ac.getBean("p");
		
		if(p1 == p2) {
			System.out.println("같아요.");
		}else {
			System.out.println("달라요");
		}
		
//		System.out.println("1");
//		ApplicationContext ac = new ClassPathXmlApplicationContext("com/bit/exam08/beans.xml");
//		System.out.println("2");
//		Person p = (Person)ac.getBean("p");
//		System.out.println("3");
//		p.info();
		
	}

}
