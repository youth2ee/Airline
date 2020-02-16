package com.airline.a1.booking;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.airline.a1.imPay.ImPayResultVO;
import com.airline.a1.member.MembersVO;

@Repository
@Mapper
public interface BookingMapper {
	
	public List<String> airportList()throws Exception;
	public List<FlightDataVO> airList(BookingTicketVO bookingTicketVO) throws Exception; 
	public FlightDataVO oneSelect(FlightDataVO flightDataVO) throws Exception;
	public int bookingInsert(BookingTicketVO bookingTicketVO) throws Exception;
	public List<BookingTicketVO> airportDepList(String depLoc)throws Exception;
	public int priceInsertOne(BookingPriceVO bookingPriceVO) throws Exception;
	public int priceInsertResult(BookingPriceVO bookingPriceVO) throws Exception;
	
	public List<FlightDataVO> flightInfo(FlightDataVO flightDataVO) throws Exception;
	public List<FlightDataVO> flightList(FlightDataVO flightDataVO) throws Exception;
	
	public MembersVO searchMember(MembersVO membersVO) throws Exception;
	
	public List<FlightDataVO> indexdep(FlightDataVO flightDataVO) throws Exception;
	
}
