package com.airline.a1.mypage;

import org.apache.ibatis.annotations.Mapper;

import com.airline.a1.checkIn.ETicketVO;

@Mapper
public interface MypageMapper {
	// 예매리스트 
	public ETicketVO getBookingList(ETicketVO eTicketVO) throws Exception;
	// 예매리스트상세 
	public ETicketVO getBookingMore(ETicketVO eTicketVO) throws Exception;
}
