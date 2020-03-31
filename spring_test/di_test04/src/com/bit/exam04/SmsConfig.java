package com.bit.exam04;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SmsConfig {
	
	@Bean
	public SMSsender sender() {
		SMSsender s = new SMSsender();
		s.setFrom("홍길동");
		s.setTo("이순신");
		return s;
	}
}
