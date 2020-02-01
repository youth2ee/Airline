package com.airline.a1.booking;

import java.util.List;

import org.springframework.stereotype.Repository;

import lombok.Data;

@Data
@Repository
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
	
	private int seatTotal;

}
