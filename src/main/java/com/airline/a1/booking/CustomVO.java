package com.airline.a1.booking;

import java.util.List;

import lombok.Data;
import lombok.Getter;

@Data
public class CustomVO {
	
	private String sex;
	private String firstName;
	private String lastName;
	private int year;
	private int month;
	private int day;
	private String memberNum;
	private String depDis;
	private String arrDis;
	
	private String resEmail;
	private String chkEmail;
	private String resPhone;
	private String chkPhone;
	
	private String name;
	
	private List<CustomVO> customVOList;
	
	private List<CustomVO> adultsVOList;
	private List<CustomVO> childrenVOList;
	
	//price
	private int depRealPrice;
	private int arrRealPrice;

	private String ageKind;
	
	private List<FlightDataVO> flightDataVO;
	private List<BookingPriceVO> priceVO;

}
