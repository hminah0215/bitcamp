package com.bit.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CarVO {
	private int car_no;
	private String car_type;
	private String color;
	private int seats;
	private int rent_fee;
	private String fname;
	private int center_no;
	private int type_no;
}
