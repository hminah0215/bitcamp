package com.bit.exam07;

public class JobExecutor {

	public JobExecutor(String name, int seconds) {
		System.out.println("생성자호출 1");
	}
	
	public JobExecutor(String name, long seconds) {
		System.out.println("생성자호출 2");
	}
	
	public JobExecutor(String name, String seconds) {
		System.out.println("생성자호출 3");
	}
	
}
