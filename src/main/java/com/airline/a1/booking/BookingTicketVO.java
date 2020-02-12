package com.airline.a1.booking;

import java.util.List;

import org.springframework.stereotype.Repository;

import lombok.Data;
@Data
public class BookingTicketVO {

	private Integer bnum;
	private String bookingNum; //예약한 경우 한번에 생성
	private String flightBNum; //예약한 인원마다 생성
	
	private String depFBNum;
	private String arrFBNum;
	
	private String kind; //편도, 왕복 //db 편도, 왕복
	private String date;
	private int adult; //인원수
	private int child; //인원수
	
	private int depFnum; //db
	private String depLoc;
	private String depStartTime;
	private String depEndTime;
	
	private FlightDataVO depInfo;
	
	private int arrFnum; //db
	private String arrLoc;
	private String arrStartTime;
	private String arrEndTime;
	
	private FlightDataVO arrInfo;
	
	//예약자 정보
	private String resDate; //db
	private String resEmail; //db
	private String resECheck; //db
	private String resPhone; //db
	private String resPCheck; //db
	
	//탑승자 정보
	private String gender; //db
	
	private String name; //db
	private String lastName; //성
	private String firstName; //이름
	
	private String birth; //db
	private String year;
	private String month;
	private String day;
	
	private String memberNum; //db
	private String id; //db
	
	private BookingPriceVO depPriceVO;
	private BookingPriceVO arrPriceVO;
	
	private String depCoupon;
	private String arrCoupon;
	
	private String depAirportNm;
	private String arrAirportNm;
	
	private String depPlandTime;
	private String arrPlandTime;
	//
	private List<BookingTicketVO> adultList;
	private List<BookingTicketVO> childList;
	

	
}
