package com.airline.a1;

import java.sql.Date;

import lombok.Data;

@Data
public class SearchVO {
	
	private int snum;
	private String search;
	private String svoca;
	private Date sdate;
	
	private int total;
}
