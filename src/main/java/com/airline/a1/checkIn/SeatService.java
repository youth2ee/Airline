package com.airline.a1.checkIn;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SeatService {
	@Autowired
	private SeatMapper seatMapper;
	public int seatBook(SeatVO seatVO) throws Exception {
		int result = seatMapper.seatBook(seatVO);
		return result;
	}
}
