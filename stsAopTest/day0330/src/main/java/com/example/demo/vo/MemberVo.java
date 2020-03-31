package com.example.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
@NoArgsConstructor
public class MemberVo {

	private String id;
	private String name;
	private String tel;
	private int age;
	private String pwd;
}
