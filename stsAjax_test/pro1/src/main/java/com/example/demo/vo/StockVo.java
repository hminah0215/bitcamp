package com.example.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
@NoArgsConstructor
public class StockVo {
	
	private String s_name;
	private int now_price;
	private int up_price;
	private int down_price;
	
}
