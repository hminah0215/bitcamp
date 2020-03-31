package com.bit.exam04;

public class SMSsender {
	private String from;
	private String to;
	

	public SMSsender(String from, String to) {
		super();
		this.from = from;
		this.to = to;
	}

	public void send() {
		System.out.println(from + "이 "+ to +"에게 메시지를 전송하였습니다.");
	}
}
