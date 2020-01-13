package com.airline.a1.api;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
public class AirportVO {
	
	private int apNum;
	private String apId;
	private String apName;
	private String cityKor;
	private String cityEng;
	private String cityCode;
	
	

}
