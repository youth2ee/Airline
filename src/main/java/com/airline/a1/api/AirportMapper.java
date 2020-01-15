package com.airline.a1.api;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface AirportMapper {

	public int airportUpdate(AirportVO airportVO) throws Exception;
	public List<AirportVO> airportList() throws Exception;
	
}
