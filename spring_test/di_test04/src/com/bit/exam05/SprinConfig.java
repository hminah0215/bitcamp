package com.bit.exam05;

import org.springframework.beans.factory.annotation.Autowire;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
@ImportResource("classpath:/com/bit/exam05/beans.xml")
public class SprinConfig {
	
	@Bean(autowire = Autowire.BY_TYPE, initMethod = "monitor")
	public SystemMonitor sm() {
		
		SystemMonitor s = new SystemMonitor();
		s.setPeriodTime(10);
		return s;
	}
}
