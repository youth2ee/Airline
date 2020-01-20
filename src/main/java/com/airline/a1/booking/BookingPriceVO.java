package com.airline.a1.booking;

import java.util.List;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class BookingPriceVO {
	
	private int bpnum;
	private String flightBNum;
	private int fnum;
	private int price;
	
	private String couName;
	private int couponDis;
	
	@Builder.Default 
	private int fuelTax = 3300;
	
	@Builder.Default 
	private int airportTax = 4000;
	
	private int totalPrice;
	
	private String memberNum;
	private String mileagePlus;
	private String id;
	
	
}
