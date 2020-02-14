package com.airline.a1.checkIn;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.airline.a1.booking.BookingTicketVO;
import com.airline.a1.member.MembersVO;
@Repository
@Mapper
public interface SeatMapper {
	public int seatBook(SeatVO seatVO) throws Exception;
	public List<SeatVO> depBookedSeat(BookingTicketVO bookingTicketVO) throws Exception;
	public List<SeatVO> arrBookedSeat(BookingTicketVO bookingTicketVO) throws Exception;
	public List<BookingTicketVO> getBookData(BookingTicketVO bookingTicketVO) throws Exception;
	public int getBookCount(BookingTicketVO bookingTicketVO) throws Exception;
	public List<SeatVO> getSeatData() throws Exception; 
	public String getVihicleId(String fnum) throws Exception;
	public List<BookingTicketVO> getDepBnum(BookingTicketVO bookingTicketVO) throws Exception;
	public int updateFlightNumDep(BookingTicketVO bookingTicketVO);
	public List<ETicketVO> getEticket(ETicketVO eTicketVO) throws Exception;
	public BookingTicketVO getLoc(BookingTicketVO bookingTicketVO) throws Exception;
}
