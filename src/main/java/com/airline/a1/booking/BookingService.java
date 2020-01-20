package com.airline.a1.booking;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class BookingService {
	
	@Autowired
	private BookingMapper bookingMapper;
	
	private int fuelTax = 3300;
	private int airportTax = 4000;
	
	
	public List<String> airportList()throws Exception{
		return bookingMapper.airportList();
	}
	
	public List<FlightDataVO> airList(BookingTicketVO bookingTicketVO) throws Exception {
		return bookingMapper.airList(bookingTicketVO);
	}
	
	public FlightDataVO oneSelect(FlightDataVO flightDataVO) throws Exception {
		return bookingMapper.oneSelect(flightDataVO);
	}
	
	public List<BookingVO> airportDepList(String arrLoc)throws Exception{
			return bookingMapper.airportDepList(arrLoc);
		
	}

	public int bookingInsert(BookingTicketVO bookingTicketVO) throws Exception {
		return bookingMapper.bookingInsert(bookingTicketVO);
	}
	

	public BookingTicketVO priceCount(BookingTicketVO bookingTicketVO) throws Exception {
		System.out.println(bookingTicketVO.getKind());
		
		System.out.println(bookingTicketVO.getDepCoupon());
		System.out.println(bookingTicketVO.getDepFnum());
		
		FlightDataVO flightDataVO = new FlightDataVO();
		flightDataVO.setFnum(bookingTicketVO.getDepFnum());
		flightDataVO =  bookingMapper.oneSelect(flightDataVO);
		System.out.println(flightDataVO.getEconomyCharge());
		
		BookingPriceVO bookingPriceVO = new BookingPriceVO();
		bookingPriceVO.setPrice(Integer.parseInt(flightDataVO.getEconomyCharge()));
		bookingPriceVO.setCouName(bookingTicketVO.getDepCoupon());
		
		if (!bookingTicketVO.getDepCoupon().equals("개인할인 선택 안함")) {
			double discount = Integer.parseInt(bookingTicketVO.getDepCoupon().substring(1, 3))*(0.01);
			System.out.println(discount);
			int dprice = (int)(bookingPriceVO.getPrice()*discount);
			int dtotal = bookingPriceVO.getPrice()-dprice;
			
			System.out.println(bookingPriceVO.getPrice()); //원가
			System.out.println(dprice); //쿠폰할인가
			System.out.println(dtotal); //쿠폰적용된 금액

			bookingPriceVO.setCouponDis(dprice);
			
			bookingPriceVO.setFuelTax(fuelTax);
			bookingPriceVO.setAirportTax(airportTax);

			int total = dtotal + bookingPriceVO.getFuelTax() + bookingPriceVO.getAirportTax();
			
			bookingPriceVO.setTotalPrice(total);
						
		} else {
			bookingPriceVO.setCouponDis(0);
			
			bookingPriceVO.setFuelTax(fuelTax);
			bookingPriceVO.setAirportTax(airportTax);

			int total = bookingPriceVO.getPrice() + bookingPriceVO.getFuelTax() + bookingPriceVO.getAirportTax();
			
			bookingPriceVO.setTotalPrice(total);
		}

		bookingTicketVO.setDepPriceVO(bookingPriceVO);
			
	//
		
		if(bookingTicketVO.getKind().equals("왕복")) {
			flightDataVO = new FlightDataVO();
			flightDataVO.setFnum(bookingTicketVO.getArrFnum());
			flightDataVO =  bookingMapper.oneSelect(flightDataVO);
			System.out.println(flightDataVO.getEconomyCharge());
			
			bookingPriceVO = new BookingPriceVO();
			bookingPriceVO.setPrice(Integer.parseInt(flightDataVO.getEconomyCharge()));
			bookingPriceVO.setCouName(bookingTicketVO.getArrCoupon());
			
			if (!bookingTicketVO.getArrCoupon().equals("개인할인 선택 안함")) {
				double discount = Integer.parseInt(bookingTicketVO.getArrCoupon().substring(1, 3))*(0.01);
				System.out.println(discount);
				int dprice = (int)(bookingPriceVO.getPrice()*discount);
				int dtotal = bookingPriceVO.getPrice()-dprice;
				
				System.out.println(bookingPriceVO.getPrice()); //원가
				System.out.println(dprice); //쿠폰할인가
				System.out.println(dtotal); //쿠폰적용된 금액

				bookingPriceVO.setCouponDis(dprice);
				
				bookingPriceVO.setFuelTax(fuelTax);
				bookingPriceVO.setAirportTax(airportTax);

				int total = dtotal + bookingPriceVO.getFuelTax() + bookingPriceVO.getAirportTax();
				
				bookingPriceVO.setTotalPrice(total);
				
			} else {
				bookingPriceVO.setCouponDis(0);
				
				bookingPriceVO.setFuelTax(fuelTax);
				bookingPriceVO.setAirportTax(airportTax);

				int total = bookingPriceVO.getPrice() + bookingPriceVO.getFuelTax() + bookingPriceVO.getAirportTax();
				
				bookingPriceVO.setTotalPrice(total);
			}

			bookingTicketVO.setArrPriceVO(bookingPriceVO);
		}
		
		return bookingTicketVO;
	
	}
	

	
	//
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
