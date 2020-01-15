package com.airline.a1.booking;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BookingVO {
	
private int kind;	
	/* 편도 1, 왕복2 */
private String depLoc;
private String arrLoc;

private String date;

private int adults;
private int children;

private String depAirportNm;


}
