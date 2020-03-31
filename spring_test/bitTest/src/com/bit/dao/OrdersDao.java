package com.bit.dao;

import org.springframework.stereotype.Repository;

import com.bit.db.OrdersManager;
import com.bit.vo.OrdersVo;

@Repository
public class OrdersDao {
	public int insertOrders(OrdersVo o) {
		return OrdersManager.insertOrders(o);
	}
}
