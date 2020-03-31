package com.bit.exam04;

public class SystemMonitor {
	private int periodTime;
	private SMSsender sender;
	
	public SystemMonitor(int periodTime, SMSsender sender) {
		super();
		this.periodTime = periodTime;
		this.sender = sender;
	}
	
	public void monitor(){
		System.out.println(periodTime + "분 간격으로");
		sender.send();
		
	}
	
}
