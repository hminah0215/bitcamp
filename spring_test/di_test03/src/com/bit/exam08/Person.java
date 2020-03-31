package com.bit.exam08;

public class Person {
	private String name;
	private int age;
	
	public Person() {
		System.out.println("생성자 동작함");
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	public void info() {
		System.out.println(name + age);
	}
}
