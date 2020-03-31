package com.bit.exam05;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Eat {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext ac = new ClassPathXmlApplicationContext("com/bit/exam05/person.xml");
		Person p = (Person)ac.getBean("p");
		p.eat("피자");	
				
	}

}
