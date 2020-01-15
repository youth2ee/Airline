package com.airline.a1.api;

import org.springframework.stereotype.Repository;

@Repository
public class BusVO {
	private String busCategoryKorName;
	private String busDataBusNum;
	private String busDataFirstTime;
	private String busDataEndTime;
	private String busDataEtcKor;
	private String busDataMoney;
	private String busDataRouteKor;
	private String busDataGetonKor;

	public String getBusCategoryKorName() {
		return busCategoryKorName;
	}

	public void setBusCategoryKorName(String busCategoryKorName) {
		this.busCategoryKorName = busCategoryKorName;
	}

	public String getBusDataBusNum() {
		return busDataBusNum;
	}

	public void setBusDataBusNum(String busDataBusNum) {
		this.busDataBusNum = busDataBusNum;
	}

	public String getBusDataFirstTime() {
		return busDataFirstTime;
	}

	public void setBusDataFirstTime(String busDataFirstTime) {
		this.busDataFirstTime = busDataFirstTime;
	}

	public String getBusDataEndTime() {
		return busDataEndTime;
	}

	public void setBusDataEndTime(String busDataEndTime) {
		this.busDataEndTime = busDataEndTime;
	}

	public String getBusDataEtcKor() {
		return busDataEtcKor;
	}

	public void setBusDataEtcKor(String busDataEtcKor) {
		this.busDataEtcKor = busDataEtcKor;
	}

	public String getBusDataMoney() {
		return busDataMoney;
	}

	public void setBusDataMoney(String busDataMoney) {
		this.busDataMoney = busDataMoney;
	}

	public String getBusDataRouteKor() {
		return busDataRouteKor;
	}

	public void setBusDataRouteKor(String busDataRouteKor) {
		this.busDataRouteKor = busDataRouteKor;
	}

	public String getBusDataGetonKor() {
		return busDataGetonKor;
	}

	public void setBusDataGetonKor(String busDataGetonKor) {
		this.busDataGetonKor = busDataGetonKor;
	}

}
