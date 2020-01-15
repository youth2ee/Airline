package com.airline.a1.booking;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface BookingMapper {
	
	public List<String> airportList()throws Exception;
	public List<FlightDataVO> airList(BookingVO bookingVO) throws Exception; 
	
}
