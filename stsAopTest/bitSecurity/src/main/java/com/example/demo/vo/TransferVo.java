package com.example.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
@NoArgsConstructor
public class TransferVo {
	private String from;	//돈보내는 사람
	private String to;		//돈받는 사람
	private int amount;		//송금액
}
