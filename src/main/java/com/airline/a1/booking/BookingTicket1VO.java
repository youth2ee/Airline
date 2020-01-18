package com.airline.a1.booking;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class BookingTicket1VO {

	private int bnum;
	
	private int fnum;
	
	private String bookingNum;
	
	private String vihicleId;
	private String depLoc;
	private String depDate;
	private String arrLoc;
	private String arrDate;
	private Date resDate;

	private String id;
	private String gender;
	private String name;
	private String birth;
	private String memberNum;
	
	private int price;
	private String emailCheck;
	private String smsCheck;
	private String ageKind;
	
	private String email;
	private String phone;
	
	private String airline;
	private String flightTime;
	
	List<BookingTicketVO> bTVOList; 
	
}
