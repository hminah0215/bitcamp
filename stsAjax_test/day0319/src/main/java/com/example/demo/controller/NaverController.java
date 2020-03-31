package com.example.demo.controller;

import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.vo.NewsVo;
import com.google.gson.Gson;

@RestController
public class NaverController {
	
	//네이버 뉴스 > IT일반 뉴스를 모두 크롤링하여 뉴스제목을 출력합니다.
	//뉴스제목을 누르면 해당 뉴스페이지로 이동하도록 프로그램합니다.
	//#main_content > div.list_body.newsflash_body > ul.type06_headline > li:nth-child(1) > dl > dt:nth-child(2) > a
	@RequestMapping(value = "/itnews.do", produces = "application/json;charset=UTF-8")
	public String News() {
		String str="";
		ArrayList<NewsVo> newsList = new ArrayList<NewsVo>();
	 
		String addr;
		try {
			for(int i=1; i<=23; i++) {
			addr="https://news.naver.com/main/list.nhn?mode=LS2D&sid2=230&sid1=105&mid=shm&date=20200319&page="+i;
			Document doc = Jsoup.connect(addr).get();
			Elements list = doc.select("#main_content li a" );
			
			for(Element news : list) {
				String title = news.text();
				String url = news.attr("href");
				
				if(!title.equals("")) {
					newsList.add(new NewsVo(title, url));
				}
			}
		}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		Gson gson = new Gson();
		str = gson.toJson(newsList);
		System.out.println(str);
		return str;
	}

	//#elGoldRateInfo > div.box > div > div.present > div > div > p:nth-child(1) > em
	@RequestMapping("/gold.do")
	public String gold() {
		String str = "";
		String addr = "https://search.naver.com/search.naver?sm=tab_hty.top&where=nexearch&query=네이버+금시세&oquery=환율&tqi=UFKv0wp0J1sssMcbT%2FNssssssYK-094950";
		try {	 
			Document doc = Jsoup.connect(addr).get();
			str = doc.select("#elGoldRateInfo > div.box > div > div.present > div > div > p:nth-child(1) > em" ).html();
			System.out.println(str);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return str;
	}
	
	
	@RequestMapping("/rate.do")
	public String rate() {
		String str = "";
		String addr = "https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=환율";
		try {	 
			Document doc = Jsoup.connect(addr).get();
			str = doc.select("#_cs_foreigninfo > div > div.contents03_sub > div > div.c_rate > div.rate_bx > div.rate_spot._rate_spot >div.rate_tlt > h3 > a > span.spt_con.up > strong" ).html();
			System.out.println(str);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return str;
	}
}
