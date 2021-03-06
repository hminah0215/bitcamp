package com.example.demo.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GoodsVo {
	private int no;
	private String item;
	private int price;
	private int qty;
	private String fname;
	private String detail;
	
	private MultipartFile uploadFile;
	// 값이 아니라 다른 폴더나 파일을 뷰에서 얻어올때 사용 
}
