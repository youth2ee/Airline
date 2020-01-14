package com.airline.a1.park;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class pReservationVO {
	
	private int pResNum;
	private String carNum;
	private String carKind;
	private Date resDate;
	private int rate;
	private String id;
	private Date startDate;
	private Date endDate;
	private int areaNum;
}
