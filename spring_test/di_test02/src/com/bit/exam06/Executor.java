package com.bit.exam06;

public class Executor {
	private Worker worker;

	public Executor(Worker worker) {
		super();
		this.worker = worker;
		this.worker.pro();
		System.out.println("생성자1 동작함");
	}

	public Executor(String run) {
		super();
		// TODO Auto-generated constructor stub
		System.out.println("생성자2 동작함");
		System.out.println(run);
	}
	
	
}
