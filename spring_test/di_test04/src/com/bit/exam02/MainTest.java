package com.bit.exam02;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.bit.exam02.SpringConfig;

public class MainTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ApplicationContext ac = new AnnotationConfigApplicationContext(SpringConfig.class);
//		SystemMonitor sm = (SystemMonitor) ac.getBean("sm");
//		sm.monitor();
	}

}
