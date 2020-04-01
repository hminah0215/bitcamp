package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.CountManager;
import com.example.demo.vo.CountVo;

@Repository
public class CountDao {

	public List<CountVo> countEmp() {
		return CountManager.countEmp();
	}
}
