package com.example.demo;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// TODO Auto-generated method stub
//		super.configure(http);
		http.authorizeRequests()
		.mvcMatchers("/","/insertMember").permitAll()
		.mvcMatchers("/admin/**").hasRole("ADMIN")
		.anyRequest().authenticated();
		
		http.formLogin().successForwardUrl("/list");
		http.logout().logoutSuccessUrl("/login");
		
//		http.formLogin().loginPage("/login").permitAll();
//		http.logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
//		.invalidateHttpSession(true);
		
		http.httpBasic();
		
		http.csrf().disable(); 
	}
}
