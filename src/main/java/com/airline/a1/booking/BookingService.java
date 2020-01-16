package com.airline.a1.booking;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class BookingService {
	
	@Autowired
	private BookingMapper bookingMapper;
	
	public List<String> airportList()throws Exception{
		return bookingMapper.airportList();
	}
	
	public List<FlightDataVO> airList(BookingVO bookingVO) throws Exception {
		return bookingMapper.airList(bookingVO);
	}
	
	public FlightDataVO oneSelect(FlightDataVO flightDataVO) throws Exception {
		return bookingMapper.oneSelect(flightDataVO);
	}

	public int bookingInsert(BookingTicketVO bookingTicketVO) throws Exception {
		return bookingMapper.bookingInsert(bookingTicketVO);
	}
	
}
