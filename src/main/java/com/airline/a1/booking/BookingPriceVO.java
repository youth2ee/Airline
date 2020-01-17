package com.airline.a1.booking;

import lombok.Data;

@Data
public class BookingPriceVO {
	
	private int realPrice;
	
	//쿠폰 
	private String cname; //쿠폰이름
	private int cprice; //쿠폰으로 할인으로 차감되는 금액
	private int ctotal; //쿠폰적용 후 금액
	
	//마일리지

}
