package com.example.demo.controller;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.example.demo.dao.MemberDao;
import com.example.demo.vo.MemberVo;

import kr.co.youiwe.webservice.ServiceSMSSoapProxy;

@Controller
public class MemberController {
	
	@Autowired
	private MemberDao dao;

	public void setDao(MemberDao dao) {
		this.dao = dao;
	}
	//아래는 반장님코드 + 너나우리 제공 코드
	//문자메시지 사이트(너나우리) 계정 정보
	String smsID = "";
	String smsPW = "";
	
	//인증번호 랜덤으로 생성
	Random r = new Random();
	//다른 메소드에서 사용 할 수 있도록 맴버변수로
	int random = r.nextInt(8999) + 1000;
	int checkNumber = 0;
	
	//MAC   Message Authentication Code 메시지 인증 코드 약어!
	//약어라도 알아두자... 인증번호니 난수 발생시키는건 알겠는데 설명이 필요함 
	@RequestMapping("/checkMAC")
	public String checkMAC(String tel) {
		String str = "인증번호를 확인하세요.";

		ServiceSMSSoapProxy sendsms = new ServiceSMSSoapProxy();
		try {
			String sendNum = "";	//전 반장번호(보내는쪽)
			String receive = tel;			//받는쪽
			System.out.println(tel);
			String content = "[" + random + "]인증번호를 입력하세요";
			checkNumber = random;
			System.out.println(checkNumber);
			
			//sendsms.java에 나오는 코드
			String test1 = (smsID + smsPW + receive);
			CEncrypt encrypt = new CEncrypt("MD5", test1);
			java.lang.String send = sendsms.sendSMS(smsID, encrypt.getEncryptData(), sendNum, receive, content);
			System.out.println("결과코드 : " + send);
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return str;
	}

	@RequestMapping("/smsOk")
	public String smsOk(int number) {
		String str = "인증번호가 틀렸습니다. 다시 확인 해주세요";
		if (number == checkNumber) {
			str = "회원가입을 진행하세요!";
		}
		return str;
	}
	
	//인증번호가 맞으면 회원가입! 
	@RequestMapping("/insertMember")
	public String insertMember(MemberVo m) {
		String str = "회원 가입에 실패하였습니다.";
		int re = dao.insertMember(m);
		if(re>0) {
			str = "회원 가입에 성공하였습니다!";
		}
		return str;
	}
	
	
	//sendsms.java 하단부분 그대로.
	class CEncrypt {
		MessageDigest md;
		String strSRCData = "";
		String strENCData = "";
		
		
		public CEncrypt() {
		}

		// 인스턴스 만들 때 한방에 처리할 수 있도록 생성자 중복시켰습니다.
		public CEncrypt(String EncMthd, String strData) {
			this.encrypt(EncMthd, strData);
		}

		// 암호화 절차를 수행하는 메소드입니다.
		public void encrypt(String EncMthd, String strData) {
			try {
				MessageDigest md = MessageDigest.getInstance(EncMthd); // "MD5" or "SHA1"
				byte[] bytData = strData.getBytes();
				md.update(bytData);

				byte[] digest = md.digest();
				StringBuffer sb = new StringBuffer();
				for (int i = 0; i < digest.length; i++) {
					strENCData = sb.append(Integer.toString((digest[i] & 0xff) + 0x100, 16).substring(1)).toString();
				}
			} catch (NoSuchAlgorithmException e) {
				System.out.print("암호화 알고리즘이 없습니다.");
			}
			;

			// 나중에 원본 데이터가 필요할지 몰라서 저장해 둡니다.
			strSRCData = strData;
		}

		// 접근자 인라인 함수(아니, 메소드)들입니다.
		public String getEncryptData() {
			return strENCData;
		}

		public String getSourceData() {
			return strSRCData;
		}

		// 데이터가 같은지 비교해주는 메소드입니다.
		public boolean equal(String strData) {
			// 암호화 데이터랑 비교를 하던, 원본이랑 비교를 하던 맘대로....
			if (strData == strENCData)
				return true;
			return false;
		}
	}
}