package com.airline.a1.booking;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class BookingService {
	
	@Autowired
	private BookingMapper bookingMapper;
	
	public List<String> airportList()throws Exception{
		return bookingMapper.airportList();
	}
	
	public List<FlightDataVO> airList(BookingVO bookingVO) throws Exception {
		return bookingMapper.airList(bookingVO);
	}
	
	public FlightDataVO oneSelect(FlightDataVO flightDataVO) throws Exception {
		return bookingMapper.oneSelect(flightDataVO);
	}

	public int bookingInsert(BookingTicketVO bookingTicketVO) throws Exception {
		return bookingMapper.bookingInsert(bookingTicketVO);
	}
	
	public BookingPriceVO cPrice(int price, String dis) {
		System.out.println(price);
		System.out.println(dis);
		
		double discount = Integer.parseInt(dis.substring(1, 3))*(0.01);
		System.out.println(discount);
		int dprice = (int)(price*discount);
		int dtotal = price-dprice;
		
		System.out.println(price); //원가
		System.out.println(dprice); //쿠폰할인가
		System.out.println(dtotal); //쿠폰적용된 금액
		
		BookingPriceVO bookingPriceVO = new BookingPriceVO();
		bookingPriceVO.setRealPrice(price);
		bookingPriceVO.setCname(dis);
		bookingPriceVO.setCprice(dprice);
		bookingPriceVO.setCtotal(dtotal);
		
		return bookingPriceVO;
	}
	
}
