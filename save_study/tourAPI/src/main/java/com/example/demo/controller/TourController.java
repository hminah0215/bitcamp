package com.example.demo.controller;

import java.io.InputStream;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Arrays;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController//바디로 넘어가야 한다.
public class TourController {
	
	//api가 xml로 보이니까, 반환타입이 스트링
	//관광 검색을 할거니까 매개변수로 키워드
	@RequestMapping(value = "tour",produces = "application/xml;charset=utf-8")
	public String listTour(String keyword) {
		String str = "";
		
		//필수인것과 필요한것만 가져와서 사용한다. (샘플코드)
		
		//스트링 형태로 읽어와서 스트링빌더로 반환한다.
		StringBuilder urlBuilder = new StringBuilder("http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchKeyword"); /*URL*/
	       try {
	    	   	//URLEncoder.encode
	    	   //스트링형태를 url로 인코딩(스트링형태의 어떤거를 인코딩할건지, 어떤타입으로 인코딩할건지)
	    	   	urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=ilqxDvc7FBGBNe7wXY4c5AipSyWcUaApekp9a0NKlurwayKHfKGYyKXUKAUcMW%2F5YF5i97dd355widhAAllD8Q%3D%3D"); /*Service Key*/
		        urlBuilder.append("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8")); /*서비스명=어플명*/
		        urlBuilder.append("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8")); /*IOS (아이폰), AND(안드로이드), ETC*/
		        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*현재 페이지 번호*/
		        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
		        urlBuilder.append("&" + URLEncoder.encode("arrange","UTF-8") + "=" + URLEncoder.encode("A", "UTF-8")); /*(A=제목순, B=조회순, C=수정일순, D=생성일순) 대표이미지가 반드시 있는 정렬(O=제목순, P=조회순, Q=수정일순, R=생성일순)*/
		        urlBuilder.append("&" + URLEncoder.encode("contentTypeId","UTF-8") + "=" + URLEncoder.encode("12", "UTF-8")); /*관광타입(관광지, 숙박 등) ID*/
		        urlBuilder.append("&" + URLEncoder.encode("keyword","UTF-8") + "=" + URLEncoder.encode(keyword, "UTF-8")); /*검색 요청할 키워드 (국문=인코딩 필요)*/
		        
		        System.out.println(urlBuilder.toString()); //스트링형식으로 뽑아서 확인 
		        
		        //위에 복사해넣은 코드를 스트링형태로 url에 넣어줌 
		        URL url = new URL(urlBuilder.toString());
		       
		        //xml을 사용할때는 꼭 예외처리가 필요함, inputStream을 사용해야해서!
		        //xml을 통째로 읽어와서 os에 담아준다.
		        InputStream os = url.openStream();
		        
		        //byte 타입 배열을 만드는데, 100바이트가 최대치라고 정해줌 
		        byte [] data = new byte [100];
		        
		        //위에 만든 data배열안에 반복물 돌려 os를 넣어준다.
		        while(true) {
		        	int a = os.read(data);	//반환타입이 int, 값이 있으면 1이상의 숫자, 공백이면 0, 값이없으면 -1 반환
		        	if(a == -1) {
		        		break;	//조건문을 탈출하지는 못하고, 반복문을 탈출한다. 여기선 while 탈출
		        				// 조건문을 탈출할 수있는건 없다!! 조건이 안맞으면 무조건 멈추니까 
		        	}
		        //100바이트씩 만든 data를 읽을거야, 공백부터(0) a번째까지 읽을거야(os가 반환하는 값) ,a는 결과값
		        //s에는 차곡차곡 새로운 데이터가 담김, 그걸 str에 담아줌 
		        	String s = new String(data, 0, a);
		        	str += s;
		        	
		        	//바이트로 읽어오면 100바이트로 꽉차있는데, 그걸 전부 0으로 바꿔준다. 
		        	//이미 값이 들어와있는데 반복문을 도니까 값을 디폴트인 0으로 초기화 해줘 라고 쓰는 것  
		        	//초기화를 해줘야 다시 반복문을 타고 읽어올 수 있다.
		        	//0은 공백, 상수가 아니라 바이트의 배열이니까 0을 바이트로 캐스팅 
		        	Arrays.fill(data, (byte)0);
		        }
		        
	       }catch(Exception e) {
	    	   System.out.println(e.getMessage());
	       }
	    //차곡차곡 겹쳐진 xml이 반환된다 
		return str;
	}
	
	
}
