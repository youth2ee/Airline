package com.airline.a1.checkIn;

import lombok.Data;

@Data
public class SeatVO {
	private int snum;
	private int fnum;
	private String seatName;
	private String bookingNum;
	private String flightNum;
}
