package com.airline.a1.checkIn;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.airline.a1.booking.BookingTicketVO;
import com.airline.a1.booking.FlightDataVO;
@Repository
@Mapper
public interface SeatMapper {
	public int seatBook(SeatVO seatVO) throws Exception;
	public List<SeatVO> depBookedSeat(BookingTicketVO bookingTicketVO) throws Exception;
	public List<SeatVO> arrBookedSeat(BookingTicketVO bookingTicketVO) throws Exception;
	public int updateFlightNum(BookingTicketVO bookingTicketVO) throws Exception;
	public List<BookingTicketVO> getBookData(BookingTicketVO bookingTicketVO) throws Exception;
	public int getBookCount(BookingTicketVO bookingTicketVO) throws Exception;
}
