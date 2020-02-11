package com.airline.a1.api;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.airline.a1.booking.FlightDataVO;
@Mapper
public interface AirportDataMapper {
	public String searchAirport(int apId) throws Exception;

	public TestVO searchAirport2() throws Exception;
	
	public void flightDataInput(FlightDataVO flightDataVO) throws Exception;
	
	public String searchAirportCode(int apId) throws Exception;
	
	public void busDataInput(BusVO busVO) throws Exception;
}
