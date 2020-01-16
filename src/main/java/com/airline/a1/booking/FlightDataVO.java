package com.airline.a1.booking;

import lombok.Data;

@Data
public class FlightDataVO {
	
	private int fnum;
	private String vihicleId;
	private String airlineNm;
	private String depPlandTime;
	private String arrPlandTime;
	private String economyCharge;
	private String depAirportNm;
	private String arrAirportNm;
	private String flightKm;
	private String flightTime;
	
	private String depTime;
	private String arrTime;
	
	private String depCityCode;
	private String arrCityCode;

	
	
}
