package com.airline.a1.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airline.a1.checkIn.ETicketVO;
import com.airline.a1.checkIn.SeatVO;

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
}
