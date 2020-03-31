package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.BookManager;
import com.example.demo.vo.BookVo;

@Repository		//dao 자동으로 생성해서 스캔해주세요!
public class BookDao {
	
	public int delete(BookVo b) {
		return BookManager.delete(b);
	}
	
	public int update(BookVo b) {
		return BookManager.update(b);
	}
	
	public int insert(BookVo b) {
		return BookManager.insert(b);
	}
	
	public List<BookVo> listAll(){
		return BookManager.listAll();
	}
}
