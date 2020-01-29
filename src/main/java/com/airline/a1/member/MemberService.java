package com.airline.a1.member;

import org.springframework.beans.factory.annotation.Autowired;
import java.util.Random;
import org.springframework.stereotype.Service;

@Service
public class MemberService {


	@Autowired
	private MemberMapper memberMapper;
	
	//로그인
	public MembersVO memberLogin(MembersVO membersVO) throws Exception{
		return memberMapper.memberLogin(membersVO);
	}
	
	//id중복체크
	public MembersVO memberidCheck(MembersVO membersVO) throws Exception{
		return memberMapper.memberidCheck(membersVO);
	}
	
	//회원가입
	public int memberJoin (MembersVO membersVO) throws Exception{
		membersVO.setMemberNum(this.mkMemberNum());
		return memberMapper.memberJoin(membersVO);
	}
	
	// 회원번호 생성
	public String mkMemberNum() throws Exception {
		Random rand = new Random();
		String memberNumber1 = String.format("%03d%n", rand.nextInt(1000)).replace("\r\n", "");
		String memberNumber2 = String.format("%03d%n", rand.nextInt(1000)).replace("\r\n", "");
		String memberNumber3 = String.format("%03d%n", rand.nextInt(1000)).replace("\r\n", "");
		String memberNumber = memberNumber1 + "-" + memberNumber2 + "-" + memberNumber3; // 띄어쓰기 있음 (아시아나 형식)
		// String memberNumber = memberNumber1 + memberNumber2 + memberNumber3; // 띄어쓰기 없음  (편의상)
		return memberNumber;

	}
	//아이디찾기폰
	public MembersVO memberidFindbyPhone(MembersVO membersVO) throws Exception{
		return memberMapper.memberidFindbyPhone(membersVO);
	}
	//아이디찾기이메일
	public MembersVO memberidFindbyEmail(MembersVO membersVO) throws Exception{
		return memberMapper.memberidFindbyEmail(membersVO);
	}
}
