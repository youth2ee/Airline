package com.airline.a1.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airline.a1.booking.BookingPriceVO;
import com.airline.a1.checkIn.ETicketVO;
import com.airline.a1.checkIn.SeatVO;
import com.airline.a1.member.MembersVO;

@Service
public class MypageService {

	@Autowired
	private MypageMapper mypageMapper;

	public List<ETicketVO> getBookingList(ETicketVO eTicketVO) throws Exception {
		return mypageMapper.getBookingList(eTicketVO);
	}

	public List<ETicketVO> getBookingMore(ETicketVO eTicketVO) throws Exception {
		return mypageMapper.getBookingMore(eTicketVO);
	}
	
	public List<SeatVO> getBookingMoreSeat(ETicketVO eTicketVO) throws Exception{
		return mypageMapper.getBookingMoreSeat(eTicketVO);
	}
	public int bookCancel(String bnum) throws Exception{
		return mypageMapper.bookCancel(bnum);
	}
	
	public List<BookingPriceVO> mtotal(MembersVO membersVO) throws Exception{
		return mypageMapper.mtotal(membersVO);
	}
	public int updateMember(MembersVO membersVO) throws Exception{
		return mypageMapper.updateMember(membersVO);
	}
}
