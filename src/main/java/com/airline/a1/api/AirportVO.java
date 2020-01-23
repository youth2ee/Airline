package com.airline.a1.api;

import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

public class AirportVO {
	
	private int apNum;
	private String apId;
	private String apName;
	private String cityKor;
	private String cityEng;
	private String cityCode;
	
	
	public int getApNum() {
		return apNum;
	}
	public void setApNum(int apNum) {
		this.apNum = apNum;
	}
	public String getApId() {
		return apId;
	}
	public void setApId(String apId) {
		this.apId = apId;
	}
	public String getApName() {
		return apName;
	}
	public void setApName(String apName) {
		this.apName = apName;
	}
	public String getCityKor() {
		return cityKor;
	}
	public void setCityKor(String cityKor) {
		this.cityKor = cityKor;
	}
	public String getCityEng() {
		return cityEng;
	}
	public void setCityEng(String cityEng) {
		this.cityEng = cityEng;
	}
	public String getCityCode() {
		return cityCode;
	}
	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}
	
	

}
