package com.bit.exam03;

public class MessageBeanKO implements MessageBean {
	
	private String title;
	private int year;
	

	public MessageBeanKO(String title, int year) {
		super();
		this.title = title;
		this.year = year;
	}


	@Override
	public void sayHello(String name) {
		// TODO Auto-generated method stub
		System.out.println("안녕하세요, "+name);
		System.out.println(title);
		System.out.println(year);
		
	}

}
