package com.airline.a1.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import java.util.Random;
import org.springframework.stereotype.Service;

import com.airline.a1.checkIn.ETicketVO;

@Service
public class MemberService {

	@Autowired
	private MypageMapper mypageMapper;

	public ETicketVO getBookingList(ETicketVO eTicketVO) throws Exception {
		return mypageMapper.getBookingList(eTicketVO);
	}

	public ETicketVO getBookingMore(ETicketVO eTicketVO) throws Exception {
		return mypageMapper.getBookingMore(eTicketVO);
	}
}
