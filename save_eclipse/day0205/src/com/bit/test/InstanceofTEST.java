package com.bit.test;

import java.util.ArrayList;

public class InstanceofTEST {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ArrayList<Object> bus = new ArrayList<Object>();
		bus.add(new Person("김찬휘", 20));
		bus.add(new Bird("참새", "노란", true));
		bus.add(new Person("곽아름", 21));
		
		for(Object ob : bus) {
			if(ob instanceof Person) {
				((Person)ob).run();
			}else if(ob instanceof Bird) {
				((Bird) ob).fly();
			}
		}
	}
}
		
//		Person p = new Person("홍길동", 20);
//		Bird b = new Bird("참새", "노랑", true);
//		
//		if(p instanceof Person) {
//			System.out.println("p참조변수는 Person의 자료형입니다.");
//		}else {
//			System.out.println("p참조변수는 Person의 자료형이 아닙니다.");
//		}
//	}


