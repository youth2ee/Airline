package com.airline.a1.api;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface AirportMapper {

	public int airportUpdate(AirportVO airportVO) throws Exception;
	
}
