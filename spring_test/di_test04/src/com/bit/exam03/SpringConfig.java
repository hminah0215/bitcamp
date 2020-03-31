package com.bit.exam03;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;

@Configuration
public class SpringConfig {
	
	@Bean
	@Scope(value = "prototype")
	public Person p () {
		return new Person();
	}
}
