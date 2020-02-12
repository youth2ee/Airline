package com.airline.a1.mypage;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.airline.a1.booking.BookingPriceVO;
import com.airline.a1.checkIn.ETicketVO;
import com.airline.a1.checkIn.SeatVO;
import com.airline.a1.member.MembersVO;

@Mapper
public interface MypageMapper {
	// 예매리스트 
	public List<ETicketVO> getBookingList(ETicketVO eTicketVO) throws Exception;
	// 예매리스트상세 
	public List<ETicketVO> getBookingMore(ETicketVO eTicketVO) throws Exception;
	public List<SeatVO> getBookingMoreSeat(ETicketVO eTicketVO) throws Exception;
	public int bookCancel(String bnum) throws Exception;
	
	public List<BookingPriceVO> mtotal(MembersVO membersVO) throws Exception;  
}
