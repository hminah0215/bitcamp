package com.bit.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.db.BookManager;
import com.bit.vo.BookVo;
@Repository
public class BookDao {
	
	public List<BookVo> listAll(HashMap map){
		return BookManager.listAll(map);
	}
	
	public BookVo getBook(int bookid) {
		return BookManager.getBook(bookid);
	}
	
	public int insertBook(BookVo b) {
		return BookManager.insertBook(b);
	}
	
	public int updateBook(BookVo b) {
		return BookManager.updateBook(b);
	}
	
	public int deleteBook(int bookid) {
		return BookManager.deleteBook(bookid);
	}
}
