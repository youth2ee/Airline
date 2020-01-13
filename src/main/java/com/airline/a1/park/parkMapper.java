package com.airline.a1.park;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface parkMapper {
	
	public List<pReservationVO> parkCheck(pReservationVO pReservationVO) throws Exception;
}
