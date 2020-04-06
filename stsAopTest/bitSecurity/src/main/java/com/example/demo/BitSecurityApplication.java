package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.example.demo.db.MemberManager;
import com.example.demo.vo.MemberVo;

@Configuration
@SpringBootApplication
public class BitSecurityApplication {
	
	//패스워드 암호화를 위한 객체를 생성해요. 
	@Bean
	public PasswordEncoder passwordEncoder() {
		return PasswordEncoderFactories.createDelegatingPasswordEncoder();
	}
	
	public static void main(String[] args) {
		//member100 db에 매니저 추가,추가된거 확인하면 주석처리
		//MemberManager.insertMember(new MemberVo
					//("manager",PasswordEncoderFactories.createDelegatingPasswordEncoder().encode("1234"),"김동완","MANAGER"));
		
		
		SpringApplication.run(BitSecurityApplication.class, args);
	}

}
