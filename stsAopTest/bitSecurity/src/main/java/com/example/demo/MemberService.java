package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.demo.db.MemberManager;
import com.example.demo.vo.MemberVo;

@Service	//자동스캔되도록
public class MemberService implements UserDetailsService {
	
	//패스워드 인코딩을 위한 객체를 멤버로 선언해요.
	//메인 어플리케이션의 클래스에서 제공되는 객체를 자동으로 의존관계 설정해요.
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	public void setPasswordEncoder(PasswordEncoder passwordEncoder) {
		this.passwordEncoder = passwordEncoder;
	}
	
	//vo에 들어있는 패스워드를 인코딩하여 다시 vo에 담아요.
	public int insertMember(MemberVo m) {
		m.setPwd(passwordEncoder.encode(m.getPwd()));
		int re = MemberManager.insertMember(m);
		return re;
	}
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		//매개변수로 전달받은 username에 해당하는 회원의 정보를 db로부터 꺼내와요.
		MemberVo m = MemberManager.selectMember(username);
		
		//만약 username에 해당하는 회원이 없으면 예외를 발생시켜요.
		if(m == null) {
			throw new UsernameNotFoundException(username);
		}
		
		//우리가 db로 부터 뽑아온 회원의 정보를 
		//스프링시큐리티가 인증절차를 할 수 있는 객체로 만들어 일을 맡긴다.
		return User.builder()
				.username(m.getName())
				.password(m.getPwd())
				.roles(m.getRole())
				.build();
	}

}
