package com.bit.exam01;

public class MessageBeanKO implements MessageBean {
	
	public MessageBeanKO() {
		System.out.println("생성자 동작하냐?");
	}

	@Override
	public void sayHello(String name) {
		// TODO Auto-generated method stub
		System.out.println("안녕하세요, "+name);
	}

}
