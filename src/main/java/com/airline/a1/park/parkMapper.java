package com.airline.a1.park;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface parkMapper {
	
	public List<pReservationVO> parkOut() throws Exception;
	
	public List<pReservationVO> parkIn() throws Exception;
	
	public List<pInfoVO> parkInfo() throws Exception;
	
	public List<pReservationVO> today() throws Exception;
	
	public List<pReservationVO> parkCheck(pReservationVO pReservationVO) throws Exception;
	
	public pInfoVO parkWhere(pInfoVO pInfoVO) throws Exception;
	
	public int resInsert(pReservationVO pReservationVO) throws Exception;
	
	public List<pReservationVO> myReservation(pReservationVO pReservationVO) throws Exception;
	
	public pReservationVO resSelect(pReservationVO pReservationVO) throws Exception;
	
	public Integer parkCancel(pReservationVO pReservationVO) throws Exception;
	
	public Integer parkCancel2(pReservationVO pReservationVO) throws Exception;
	
	public List<pReservationVO> FindMyResByCarNum(pReservationVO pReservationVO) throws Exception;
	
	public List<pReservationVO> FindMyResByPhone(pReservationVO pReservationVO) throws Exception;
	
	public List<pReservationVO> lastMonthEarn(String pm) throws Exception;
	
	public List<pReservationVO> thisMonthEarn(String tm) throws Exception;
	
	public List<pReservationVO> parkfinalcheck(pReservationVO pReservationVO) throws Exception;
}
