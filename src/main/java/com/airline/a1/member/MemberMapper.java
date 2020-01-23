package com.airline.a1.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
	
	public MembersVO memberLogin(MembersVO membersVO) throws Exception;
}
