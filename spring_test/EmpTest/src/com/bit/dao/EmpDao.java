package com.bit.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.db.EmpManager;
import com.bit.vo.EmpVo;

@Repository
public class EmpDao {
	public int insertEmp(EmpVo e) {
		return EmpManager.insertEmp(e);
	}
	
	public List<EmpVo> managerList(){
		return EmpManager.managerList();
	}
}
