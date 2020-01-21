package com.airline.a1.checkIn;

import lombok.Data;

@Data
public class SeatVO {
	private int sNum;
	private int fNum;
	private String seatName;
	private String bookingNum;
	private String flightNum;
}
