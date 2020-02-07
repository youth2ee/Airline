package com.airline.a1.member;

import org.apache.ibatis.annotations.Mapper;

import com.airline.a1.booking.BookingPriceVO;

@Mapper
public interface MemberMapper {
	//로그인
	public MembersVO memberLogin(MembersVO membersVO) throws Exception;
	public MembersVO memberLogin2(MembersVO membersVO) throws Exception;
	//id중복체크
	public MembersVO memberidCheck(MembersVO membersVO) throws Exception;
	//회원번호중복조회
	public int memberNumCheck(MembersVO membersVO) throws Exception;
	//회원가입
	public int memberJoin(MembersVO membersVO) throws Exception;
	
	//아이디찾기폰
	public MembersVO memberidFindbyPhone(MembersVO membersVO) throws Exception;
	//아이디찾기이메일
	public MembersVO memberidFindbyEmail(MembersVO membersVO) throws Exception;

	public int memberMileageUpdate(MembersVO membersVO) throws Exception;
	
	public int updateMilplus(BookingPriceVO bookingPriceVO) throws Exception;
	public int updateMilmin(MembersVO membersVO) throws Exception;

}
