package com.bit.exam02;


public class SystemMonitor {
	private int periodTime;
	private SMSsender sender;

	public void setPeriodTime(int periodTime) {
		this.periodTime = periodTime;
	}

	public void setSender(SMSsender sender) {
		this.sender = sender;
	}

	public void monitor() {
		System.out.println(periodTime + "분 간격으로");
		sender.send();

	}

}
