package com.airline.a1.checkIn;

import org.springframework.stereotype.Repository;

import lombok.Data;

@Data
@Repository
public class SeatDataVO {
	private String bookingNum;
	private int depFNum;
	private String depSeat;
	private int arrFNum;
	private String arrSeat;
	private int people;
}	
