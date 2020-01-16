package com.airline.a1.booking;

import org.springframework.stereotype.Repository;

import lombok.Data;

//@Data
@Repository
public class FlightDataVO {
	
	private int fnum;
	private String vihicleId;
	private String airlineNm;
	private String depPlandTime;
	private String arrPlandTime;
	private String economyCharge;
	private String depAirportNm;
	private String arrAirportNm;
	private String flightKm;
	private String flightTime;
	
	private String depTime;
	private String arrTime;
	
	private String depCityCode;
	private String arrCityCode;
	public int getFnum() {
		return fnum;
	}
	public void setFnum(int fnum) {
		this.fnum = fnum;
	}
	public String getVihicleId() {
		return vihicleId;
	}
	public void setVihicleId(String vihicleId) {
		this.vihicleId = vihicleId;
	}
	public String getAirlineNm() {
		return airlineNm;
	}
	public void setAirlineNm(String airlineNm) {
		this.airlineNm = airlineNm;
	}
	public String getDepPlandTime() {
		return depPlandTime;
	}
	public void setDepPlandTime(String depPlandTime) {
		this.depPlandTime = depPlandTime;
	}
	public String getArrPlandTime() {
		return arrPlandTime;
	}
	public void setArrPlandTime(String arrPlandTime) {
		this.arrPlandTime = arrPlandTime;
	}
	public String getEconomyCharge() {
		return economyCharge;
	}
	public void setEconomyCharge(String economyCharge) {
		this.economyCharge = economyCharge;
	}
	public String getDepAirportNm() {
		return depAirportNm;
	}
	public void setDepAirportNm(String depAirportNm) {
		this.depAirportNm = depAirportNm;
	}
	public String getArrAirportNm() {
		return arrAirportNm;
	}
	public void setArrAirportNm(String arrAirportNm) {
		this.arrAirportNm = arrAirportNm;
	}
	public String getFlightKm() {
		return flightKm;
	}
	public void setFlightKm(String flightKm) {
		this.flightKm = flightKm;
	}
	public String getFlightTime() {
		return flightTime;
	}
	public void setFlightTime(String flightTime) {
		this.flightTime = flightTime;
	}
	public String getDepTime() {
		return depTime;
	}
	public void setDepTime(String depTime) {
		this.depTime = depTime;
	}
	public String getArrTime() {
		return arrTime;
	}
	public void setArrTime(String arrTime) {
		this.arrTime = arrTime;
	}
	public String getDepCityCode() {
		return depCityCode;
	}
	public void setDepCityCode(String depCityCode) {
		this.depCityCode = depCityCode;
	}
	public String getArrCityCode() {
		return arrCityCode;
	}
	public void setArrCityCode(String arrCityCode) {
		this.arrCityCode = arrCityCode;
	}

	
	
}
