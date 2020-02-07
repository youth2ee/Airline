package com.airline.a1.park;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface parkMapper {
	
	public List<pReservationVO> parkCheck(pReservationVO pReservationVO) throws Exception;
	
	public pInfoVO parkWhere(pInfoVO pInfoVO) throws Exception;
	
	public int resInsert(pReservationVO pReservationVO) throws Exception;
	
	public List<pReservationVO> myReservation(pReservationVO pReservationVO) throws Exception;
	
	public pReservationVO resSelect(pReservationVO pReservationVO) throws Exception;
	
	public int parkCancel(pReservationVO pReservationVO) throws Exception;
}
