package com.bit.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class GoodsVo {
	private int no;
	private String item;
	private int qty;
	private int price;
	private String fname;
	private String detail;
}
