package com.airline.a1.checkIn;

import org.springframework.stereotype.Repository;

import lombok.Data;
@Repository
@Data
public class ETicketVO {
	private String name;
	private String kind; 
	private String flightBNum;
	private String bookingNum;
	private String depAirportNm;
	private String arrAirportNm;
	private String vihicleId;
	private String depPlandTime;
	private String arrPlandTime;
	private int flightTime;
	private String depCityCode;
	private String depCityEng;
	private String arrCityCode;
	private String arrCityEng;
	private String seatName;
	// 추가
	private int totalPrice;
	private String id;
	private String resDate;
	private int bnum;
}
