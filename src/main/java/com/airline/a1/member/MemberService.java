package com.airline.a1.member;

import java.util.Random;

import org.springframework.stereotype.Service;

@Service
public class MemberService {
	
	// 회원번호 생성
	public String mkMemberNum() throws Exception {
		Random rand = new Random();
		String memberNumber1 = String.format("%03d%n", rand.nextInt(1000)).replace("\r\n", "");
		String memberNumber2 = String.format("%03d%n", rand.nextInt(1000)).replace("\r\n", "");
		String memberNumber3 = String.format("%03d%n", rand.nextInt(1000)).replace("\r\n", "");
		String memberNumber = memberNumber1 + " " + memberNumber2 + " " + memberNumber3; // 띄어쓰기 있음 (아시아나 형식)
		// String memberNumber = memberNumber1 + memberNumber2 + memberNumber3; // 띄어쓰기 없음  (편의상)
		System.out.println("회원번호 : " + memberNumber);
		return memberNumber;
	}
}
