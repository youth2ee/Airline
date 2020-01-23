package com.airline.a1.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

	@Autowired
	private MemberMapper memberMapper;
	
	public MembersVO memberLogin(MembersVO membersVO) throws Exception{
		return memberMapper.memberLogin(membersVO);
	}
}
