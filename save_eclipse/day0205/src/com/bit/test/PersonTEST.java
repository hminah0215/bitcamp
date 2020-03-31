package com.bit.test;



public class PersonTEST {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Person p = new Person("홍길동",20);
		System.out.println(p); 	//객체의 주소값이 출력된다.
		//객체가 가지고 있는 속성값을 문자열로 출력되게 하기 위해서는 toString()을 재정의 한다.
		
		Person p2 = new Person("홍길동", 20);
		if(p.equals(p2)) {
			System.out.println("둘이 같아요.");
		}else {
			System.out.println("둘이 달라요.");
		}
	}

}
