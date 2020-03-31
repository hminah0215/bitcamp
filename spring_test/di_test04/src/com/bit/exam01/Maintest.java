package com.bit.exam01;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Maintest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ApplicationContext ac = new AnnotationConfigApplicationContext(SpringConfig.class);
		Person p = (Person) ac.getBean("p");
		p.eat("맥주");
	}

}
