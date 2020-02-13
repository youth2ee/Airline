package com.airline.a1.checkIn;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airline.a1.booking.BookingTicketVO;
import com.airline.a1.member.MembersVO;

@Service
public class SeatService {
	@Autowired
	private SeatMapper seatMapper;
	
	public List<ETicketVO> getEticket(ETicketVO eticketVO) throws Exception{
		return seatMapper.getEticket(eticketVO);
	}
	public int seatBook(SeatVO seatVO) throws Exception {
		int result = seatMapper.seatBook(seatVO);
		return result;
	}

	public List<SeatVO> depBookedSeat(BookingTicketVO bookingTicketVO) throws Exception {
		return seatMapper.depBookedSeat(bookingTicketVO);
	}
	
	public List<SeatVO> arrBookedSeat(BookingTicketVO bookingTicketVO) throws Exception {
		return seatMapper.arrBookedSeat(bookingTicketVO);
	}

	public int updateFlightNumDep(BookingTicketVO bookingTicketVO) throws Exception {
		// bookTicket 테이블의 flightBNum을 체크인시 넣음
		return seatMapper.updateFlightNumDep(bookingTicketVO);
	}

	public List<BookingTicketVO> getBookData(BookingTicketVO bookingTicketVO) throws Exception {
		// 위 업데이트가 한 번에 여러번 돌아가야하니까 길이도 구하고 BNum도 구해주는용
		// 순서 이거 -> 위에거
		return seatMapper.getBookData(bookingTicketVO);
	}

	public int getBookCount(BookingTicketVO bookingTicketVO) throws Exception {
		return seatMapper.getBookCount(bookingTicketVO);
	}
	
	public List<SeatVO> getSeatData() throws Exception{
		return seatMapper.getSeatData();
	}
	public String getVihicleId(String fnum) throws Exception {
		return seatMapper.getVihicleId(fnum);
	}
	
	public List<BookingTicketVO> getDepBnum(BookingTicketVO bookingTicketVO) throws Exception{
		return seatMapper.getDepBnum(bookingTicketVO);
	}
	public BookingTicketVO getLoc(BookingTicketVO bookingTicketVO) throws Exception{
		return seatMapper.getLoc(bookingTicketVO);
	}

	// 예약번호(각자 다른거) 생성
	public String flightNum(String fnum) throws Exception {
		Random rand = new Random();
		String flightNum = fnum;
		// 편명에 "/" 제거 ex): HGG/1301 -> HGG1301
		if (flightNum.contains("/"))
			flightNum = flightNum.replace("/", "");
		String filghtNum1 = String.format("%03d%n", rand.nextInt(1000)).replace("\r\n", "");
		char filghtNum2 = (char) ((int) (Math.random() * 26) + 65);
		// 편명 + 랜덤 알파벳 + 001~999 범위의 랜덤 숫자 ex): HGG1301/J/635 -> HGG1301J635
		flightNum = flightNum + Character.toString(filghtNum2) + filghtNum1;
		//System.out.println("예약번호(개인) : " + flightNum);
		return flightNum;
	}
	


}
