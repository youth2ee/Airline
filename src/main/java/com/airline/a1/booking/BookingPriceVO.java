package com.airline.a1.booking;

import java.util.List;
import lombok.Data;

@Data
public class BookingPriceVO {
	
	private int bpnum;
	private String flightBNum;
	private int fnum;
	private int price;
	
	private String couName;
	private int couponDis;
	
	private int fuelTax;
	private int airportTax;
	
	private int totalPrice;
	
	
	
	private int mileagePlus;
	private String memberNum;
	private String id;
	
	
}
