package com.example.demo.dao;


import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.BoardManager;
import com.example.demo.vo.BoardVo;


@Repository
public class BoardDao {
	
	public int totalRecord() {
	
		return BoardManager.totalRecord();
	}
	
	public void updateHit(int no) {
		BoardManager.updateHit(no);
	}
	
	public void updateStep(HashMap map) {
		 BoardManager.updateStep(map);
	}
	
	public int deleteBoard(HashMap map) {
		return BoardManager.deleteBoard(map);
	}
	
	public int updateBoard(BoardVo b) {
		return BoardManager.updateBoard(b);
	}
	
	public BoardVo detailBoard(int no) {
		return BoardManager.detailBoard(no);
	}
	
	public int nextNo() {
		return BoardManager.nextNo();
	}
	
	public int insertBoard(BoardVo b) {
		return BoardManager.insertBoard(b);
	}
	
	public List<BoardVo> listAll(HashMap map){
		return BoardManager.listAll(map);
	}


}
