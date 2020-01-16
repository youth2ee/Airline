package com.airline.a1.api;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.airline.a1.booking.FlightDataVO;

@Repository
@Mapper
public interface AirportMapper {

	public int airportUpdate(AirportVO airportVO) throws Exception;
	public List<AirportVO> airportList() throws Exception;
	public int airUpdate(FlightDataVO flightDataVO) throws Exception;
	
}
