package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PomController {
	//화면전환을 위한 컨트롤러 
	//유지보수에 편리하도록 void 타입으로 접근할 수 있게 만든다
		@RequestMapping("/tourInfo.do")
		public void tour() {
			
		}
		@RequestMapping("/detail.do")
		public void detail() {
			
		}
}
