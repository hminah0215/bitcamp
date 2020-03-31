package com.bit.test;

public class Bird {
	String name;
	String color;
	boolean wing;

	public void fly() {
		if (wing == true) {
			System.out.println(color + "색"+ name +"가(이) 훨~ 훨~");
		}
	}
	public Bird(String name, String color, boolean wing) {
		this.name = name;
		this.color = color;
		this.wing = wing;
	}
}
