package com.bit.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.db.DeptManager;
import com.bit.vo.DeptVo;

@Repository
public class DeptDao {
	public List<DeptVo> listAll(){
		return DeptManager.listAll();
	}
}
