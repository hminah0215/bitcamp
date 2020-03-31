package com.bit.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.db.CustomerManager;
import com.bit.vo.CustomerVo;

@Repository
public class CustomerDao {
	
	public List<CustomerVo> listAll(HashMap map){
		return CustomerManager.listAll(map);
	}
	
	public CustomerVo getCustomer(int custid) {
		return CustomerManager.getCustomer(custid);
	}
	
	public int insertCustomer(CustomerVo c) {
		return CustomerManager.insertCustomer(c);
	}

	public int deleteCustomer(int custid) {
		
		return CustomerManager.deleteCustomer(custid);
	}

	public int updateCustomer(CustomerVo c) {
		return CustomerManager.updateCustomer(c);
	}
}
