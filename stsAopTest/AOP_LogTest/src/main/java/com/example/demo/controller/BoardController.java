package com.example.demo.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BoardController {
	
	@GetMapping("/insertBoard")
	public String insertBoard(HttpServletRequest request) {
		String str ="ok";
		System.out.println("게시물등록 get");
		
//		String uri = request.getRequestURI();
//		String ip = request.getRemoteAddr();
//		String time = new Date().toLocaleString();
//		System.out.println("요청한 uri: "  + uri);
//		System.out.println("요청한 ip주소: " + ip);
//		System.out.println("요청한 시간: " + time);
		return str;
	}
	
	@PostMapping("/insertBoard")
	public String insertBoardOk(HttpServletRequest request) {
		String str ="ok";
		System.out.println("게시물등록 post");
		
//		String uri = request.getRequestURI();
//		String ip = request.getRemoteAddr();
//		String time = new Date().toLocaleString();
//		System.out.println("요청한 uri: "  + uri);
//		System.out.println("요청한 ip주소: " + ip);
//		System.out.println("요청한 시간: " + time);
		return str;
	}
}
