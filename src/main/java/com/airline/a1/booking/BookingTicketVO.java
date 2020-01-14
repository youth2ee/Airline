package com.airline.a1.booking;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BookingTicketVO {
	
	private int bookingNum;
	private int flightNum;
	private String depLoc;
	private Date depDate;
	private String depTime;
	private String arrLoc;
	private Date resDate;
	private int resNum;
	

}
