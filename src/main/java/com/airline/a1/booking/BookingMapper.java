package com.airline.a1.booking;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface BookingMapper {
	
	public List<String> airportList()throws Exception;
	public List<FlightDataVO> airList(BookingTicketVO bookingTicketVO) throws Exception; 
	public FlightDataVO oneSelect(FlightDataVO flightDataVO) throws Exception;
	public int bookingInsert(BookingTicketVO bookingTicketVO) throws Exception;
	public List<BookingTicketVO> airportDepList(String depLoc)throws Exception;
	public int priceInsertOne(BookingPriceVO bookingPriceVO) throws Exception;

}
