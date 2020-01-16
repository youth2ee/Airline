package com.airline.a1.park;

import java.sql.Date;

import lombok.Builder.Default;
import lombok.Getter;
import lombok.Setter;

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
	private String airport;
	
	public int getpResNum() {
		return pResNum;
	}
	public void setpResNum(int pResNum) {
		this.pResNum = pResNum;
	}
	public String getCarNum() {
		return carNum;
	}
	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}
	public String getCarKind() {
		return carKind;
	}
	public void setCarKind(String carKind) {
		this.carKind = carKind;
	}
	public Date getResDate() {
		return resDate;
	}
	public void setResDate(Date resDate) {
		this.resDate = resDate;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public int getAreaNum() {
		return areaNum;
	}
	public void setAreaNum(int areaNum) {
		this.areaNum = areaNum;
	}
	public String getAirport() {
		if(airport == null) {
			airport="김포공항";
		}
		
		return airport;
	}
	public void setAirport(String airport) {
		this.airport = airport;
	}
	
	
}
