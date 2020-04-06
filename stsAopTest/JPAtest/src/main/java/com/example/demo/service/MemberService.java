package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.demo.dao.MemberDao;
import com.example.demo.entity.Member100;
@Service
public class MemberService implements UserDetailsService {

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Autowired
	private MemberDao memberDao;

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public void setPasswordEncoder(PasswordEncoder passwordEncoder) {
		this.passwordEncoder = passwordEncoder;
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		// return null;

		System.out.println("사용자 인코딩................. 호출");

		Member100 m = memberDao.findById(username).get();

//		Member100 m = memberDao.getOne(username);
//		Member100 m = memberDao.findOne(username);

		System.out.println("사용자id:" + username);
		System.out.println("사용자 객체:" + m);
		if (m == null) {
			System.out.println("해당사용자 없음");
			throw new UsernameNotFoundException(username);
		}

		return User.builder().username(m.getId()).password(m.getPwd()).roles(m.getRole()).build();
	}
}
