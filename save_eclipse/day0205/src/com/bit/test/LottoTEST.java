package com.bit.test;

import java.util.Random;
import java.util.TreeSet;

public class LottoTEST {
	public static void main(String[] args) {
		TreeSet lotto = new TreeSet();
		//로또 번호는 중복이 되지 않아야 하므로, set을 생성해요.
		//set의 특징은 중복을 허용하지 않기때문에 새로운 데이터를 추가할 때 이미 그 값이
		//set에 있다면 담지 않아요. 
		
		Random r = new Random();
		//1~45사이의 무작위 수 (난수)를 만들기 위한 객체를 생성해요.
		
		while (true) {			//계속 (끝없이) 반복 실행해요.
			lotto.add(r.nextInt(45) + 1);
			if (lotto.size() >= 6) { //만약에 set이름인 lotto에 담긴 수가 6개 이상이면
				break;				//반복문을 탈출해요.
			}
		}
		System.out.println(lotto);
		//set의 변수인 lotto에 담긴 6개의 숫자를 출력해요.
		//TreeSet에 toString()이 자신에게 맞도록 재정의 되어 있어요. 
		System.out.println(lotto.toString());
	}
}
