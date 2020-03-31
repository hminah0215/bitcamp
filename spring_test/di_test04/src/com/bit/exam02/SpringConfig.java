package com.bit.exam02;

import org.springframework.beans.factory.annotation.Autowire;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SpringConfig {
	@Bean
	public SMSsender sender() {
		SMSsender s = new SMSsender();
		s.setFrom("홍길동");
		s.setTo("이순신");
		return s;
	}
	
	@Bean(autowire = Autowire.BY_TYPE, initMethod = "monitor")
	public SystemMonitor sm() {
		SystemMonitor s = new SystemMonitor();;
		s.setPeriodTime(30);
//		s.setSender(sender());
		return s;
	}
}

