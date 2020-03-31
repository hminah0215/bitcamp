package com.bit.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//board(no*, title, writer, pwd, hit, regdate, content, fname)
@AllArgsConstructor
@Data
@NoArgsConstructor
public class BoardVO {
	private int no;
	private String title;
	private String writer;
	private String pwd;
	private int hit;
	private String regdate;
	private String content;
	private String fname;
}
