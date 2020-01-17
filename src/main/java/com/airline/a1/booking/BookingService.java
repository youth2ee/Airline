package com.airline.a1.booking;

import java.util.List;
import java.util.UUID;

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
		BookingPriceVO bookingPriceVO = new BookingPriceVO();
		
		if (!dis.equals("개인할인 선택 안함")) {
			double discount = Integer.parseInt(dis.substring(1, 3))*(0.01);
			System.out.println(discount);
			int dprice = (int)(price*discount);
			int dtotal = price-dprice;
			
			System.out.println(price); //원가
			System.out.println(dprice); //쿠폰할인가
			System.out.println(dtotal); //쿠폰적용된 금액
			
			bookingPriceVO.setCprice(dprice);
			bookingPriceVO.setCtotal(dtotal);
		} else {
			bookingPriceVO.setCprice(0);
			bookingPriceVO.setCtotal(price);
		}
		
		bookingPriceVO.setCname(dis);
		bookingPriceVO.setRealPrice(price);
		
		return bookingPriceVO;
	}
	
	public String bookingNum(String vid) {
		
		if (vid.contains("/")) {
			vid = vid.replace("/", "");
		}
		
		int vidL = vid.length();
		vidL = 12 - vidL;
        
		String uuid = UUID.randomUUID().toString().replaceAll("-", ""); // -를 제거해 주었다.
        uuid = uuid.substring(0, vidL); //uuid를 앞에서부터 10자리 잘라줌.
        
        String bookingNum = vid + uuid;
        
        return bookingNum;
	}
	
}
