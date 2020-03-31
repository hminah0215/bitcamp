package com.bit.exam05;


public class SMSsender {
	private String from;
	private String to;

	public void setFrom(String from) {
		this.from = from;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public void send() {
		System.out.println(from + "이 " + to + "에게 메시지를 전송하였습니다.");
	}
}
