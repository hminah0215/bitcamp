package com.example.demo.dao;

import java.util.HashMap;

import org.springframework.stereotype.Repository;

import com.example.demo.db.CustomerManager;
import com.example.demo.vo.CustomerVo;

@Repository
public class CustomerDao {
	
	public CustomerVo login(HashMap map) {
		return CustomerManager.login(map);
	}
}
