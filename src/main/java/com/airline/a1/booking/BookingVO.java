package com.airline.a1.booking;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BookingVO {
	
private int kind;	
private String depLoc;
private String arrLoc;
private String depDate;
private String arrDate;
private int adults;
private int children;


}
