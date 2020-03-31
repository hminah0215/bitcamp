package com.bit.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.db.CustomerManager;
import com.bit.vo.CustomerVo;

@Repository
public class CustomerDao {
	public List<CustomerVo> listAll(){
		return CustomerManager.listAll();
	}
}
