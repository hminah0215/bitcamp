package com.example.demo.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

//테이블을 만들어줌,테이블 이름이 product가 되야하니까 파일 이름도 동일하게.
//다를때는 따로 테이블 이름을 줄 수 있다 @Table(name="product")
@Entity
@Data
public class Product {
	//primary key에는 @Id
	@Id
	private int id;
	private String name;
	private int price;
	
	
	@ManyToOne
	@JoinColumn(name = "cid", insertable = true, updatable = true)
	private Category category;
}
