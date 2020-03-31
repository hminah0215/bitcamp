package com.bit.vo;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
@NoArgsConstructor
public class OrdersVo {
	private int orderid;
	private int custid;
	private int bookid;
	private int saleprice;
	private Date orderdate;
}
