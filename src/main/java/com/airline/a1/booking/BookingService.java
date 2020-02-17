package com.airline.a1.booking;

import java.util.List;
import java.util.Random;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airline.a1.imPay.ImPayResultVO;
import com.airline.a1.member.MembersVO;


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
	
	public List<BookingTicketVO> airportDepList(String depLoc)throws Exception{
			return bookingMapper.airportDepList(depLoc);
		
	}

	public int bookingInsert(BookingTicketVO bookingTicketVO) throws Exception {
		return bookingMapper.bookingInsert(bookingTicketVO);
	}
	

	public BookingTicketVO priceCount(BookingTicketVO bookingTicketVO) throws Exception {
		FlightDataVO flightDataVO = new FlightDataVO();
		flightDataVO.setFnum(bookingTicketVO.getDepFnum());
		flightDataVO =  bookingMapper.oneSelect(flightDataVO);
		/* System.out.println(flightDataVO.getEconomyCharge()); */
		
		
		BookingPriceVO bookingPriceVO = new BookingPriceVO();
		
		bookingPriceVO.setPrice(Integer.parseInt(flightDataVO.getEconomyCharge()));
		bookingPriceVO.setCouName(bookingTicketVO.getDepCoupon());
		
		if (!bookingTicketVO.getDepCoupon().equals("개인할인 선택 안함")) {
			double discount = Integer.parseInt(bookingTicketVO.getDepCoupon().substring(1, 3))*(0.01);
			/* System.out.println(discount); */
			int dprice = (int)(bookingPriceVO.getPrice()*discount);
			int dtotal = bookingPriceVO.getPrice()-dprice;
			
			/*
			 * System.out.println(bookingPriceVO.getPrice()); //원가
			 * System.out.println(dprice); //쿠폰할인가 System.out.println(dtotal); //쿠폰적용된 금액
			 */
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
		
		//마일리지 적립금액 계산
		int km = Integer.parseInt(flightDataVO.getFlightKm());
		int mplus = km*6;
		
		bookingPriceVO.setMileagePlus(mplus);
		
		
		
		bookingTicketVO.setDepPriceVO(bookingPriceVO);
			
	//
		
		if(bookingTicketVO.getKind().equals("왕복")) {
			flightDataVO = new FlightDataVO();
			flightDataVO.setFnum(bookingTicketVO.getArrFnum());
			flightDataVO =  bookingMapper.oneSelect(flightDataVO);
			/* System.out.println(flightDataVO.getEconomyCharge()); */
			
			bookingPriceVO = new BookingPriceVO();
			bookingPriceVO.setPrice(Integer.parseInt(flightDataVO.getEconomyCharge()));
			bookingPriceVO.setCouName(bookingTicketVO.getArrCoupon());
			
			if (!bookingTicketVO.getArrCoupon().equals("개인할인 선택 안함")) {
				double discount = Integer.parseInt(bookingTicketVO.getArrCoupon().substring(1, 3))*(0.01);
				/* System.out.println(discount); */
				int dprice = (int)(bookingPriceVO.getPrice()*discount);
				int dtotal = bookingPriceVO.getPrice()-dprice;
				
				/*
				 * System.out.println(bookingPriceVO.getPrice()); //원가
				 * System.out.println(dprice); //쿠폰할인가 System.out.println(dtotal); //쿠폰적용된 금액
				 */
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
			
			//마일리지 적립금액 계산
			km = Integer.parseInt(flightDataVO.getFlightKm());
			mplus = km*6;
			
			bookingPriceVO.setMileagePlus(mplus);

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
	
	// 예매번호(여러명이 같은거) 생성
	public String bookNum() throws Exception {
		Random rand = new Random();
		char bookNum1 = (char) ((int) (Math.random() * 26) + 65);
		String bookNum2 = String.format("%02d%n", rand.nextInt(100)).replace("\r\n", "");
		char bookNum3 = (char) ((int) (Math.random() * 26) + 65);
		String bookNum4 = String.format("%02d%n", rand.nextInt(100)).replace("\r\n", "");
		String bookNum = Character.toString(bookNum1) + bookNum2 + Character.toString(bookNum3) + bookNum4;
		/*
		 * System.out.println("예매번호 : " + bookNum); // A00A00 형식
		 */		return bookNum;
	}
	// 예약번호(각자 다른거) 생성 
	public String flightNum(BookingTicketVO bookingTicketVO) throws Exception {

			Random rand = new Random();
			String flightNum = bookingTicketVO.getDepInfo().getVihicleId();
			// 편명에 "/" 제거 ex): HGG/1301 -> HGG1301
			if(flightNum.contains("/"))
				flightNum = flightNum.replace("/","");
			String filghtNum1 = String.format("%03d%n", rand.nextInt(1000)).replace("\r\n", "");
			char filghtNum2 = (char) ((int) (Math.random() * 26) + 65);
			// 편명 + 랜덤 알파벳 + 001~999 범위의 랜덤 숫자 ex): HGG1301/J/635 -> HGG1301J635
			flightNum = flightNum +Character.toString(filghtNum2)+ filghtNum1; 
		/* System.out.println("예약번호(개인) : " + flightNum); */
			return flightNum;
		}
	
	public int priceInsertOne(BookingPriceVO bookingPriceVO) throws Exception {
		return bookingMapper.priceInsertOne(bookingPriceVO);
	}

	public int priceInsertResult(BookingPriceVO bookingPriceVO) throws Exception{
		return bookingMapper.priceInsertResult(bookingPriceVO);
	}
	
	//
	public List<FlightDataVO> flightInfo(FlightDataVO flightDataVO) throws Exception {
		return bookingMapper.flightInfo(flightDataVO);
	}
	
	public List<FlightDataVO> flightList(FlightDataVO flightDataVO) throws Exception {
		return bookingMapper.flightList(flightDataVO);
	}
	
	public MembersVO searchMember(MembersVO membersVO) throws Exception{
		return bookingMapper.searchMember(membersVO);
	}
	
	public List<FlightDataVO> indexdep(FlightDataVO flightDataVO) throws Exception{
		return bookingMapper.indexdep(flightDataVO);
	}
	

	
}
