package com.example.demo;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class SequrityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		//super.configure(http);
		
		http.authorizeRequests()	//사용자의 요청별 권한설정을 하겠습니다.
			
			//이러한 요청은 로그인 상관없이 아무나 접근 할 수 있어요!
			.mvcMatchers("/","/all/**").permitAll()
			//이런 요청은 admin이라는 권한(role)이 있어야 사용할 수 있어요!
			.mvcMatchers("/admin/**").hasRole("ADMIN") 
			//그 나머지 요청은 로그인만 하면 사용할 수 있어요! 
			.anyRequest().authenticated();	
		
		//http.formLogin();		//스프링 시큐리티가 제공하는 로그인폼을 사용하겠습니다.
		
		//로그인 페이지를 사용자가 만들어 지정해보자 
		http.formLogin().loginPage("/login").permitAll();
		
		//사용자 정의 loginPage를 지정하면 로그아웃 또한 제공하지 않아요.
		//로그아웃을 위한 서비스명도 지정해줘야함
		http.logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout")).invalidateHttpSession(true);
		
		http.httpBasic();		//http 기본 프로토콜을 사용하겠습니다.
	}
	
}
