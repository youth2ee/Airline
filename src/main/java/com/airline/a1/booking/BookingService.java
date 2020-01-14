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

}
