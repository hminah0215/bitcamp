package com.example.demo.controller;


import java.io.InputStream;
import java.net.URL;
import java.util.Arrays;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class KmaController {
	@RequestMapping(value = "/getkma", produces = "application/xml;charset=UTF-8")
	public String kma() {
		String str = "";
		String addr = "https://www.weather.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=108";
		
		try {
			URL url = new URL(addr);
			InputStream os = url.openStream();
			byte[] data = os.readAllBytes();
			str = new String(data);		
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return str;
	}
}
