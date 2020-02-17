package com.airline.a1.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.airline.a1.booking.FlightDataVO;
import com.airline.a1.checkIn.ETicketVO;
import com.airline.a1.member.MembersVO;
import com.airline.a1.limo.LimoVO;


@Repository
@Mapper
public interface AdminMapper {
	
	public List<AirlineVO> airlineList() throws Exception;
	public List<AirportVO> airportList() throws Exception;
	
	public List<FlightDataVO> airpartList(FlightDataVO flightDataVO) throws Exception;
	public List<FlightDataVO> airallList() throws Exception;
	public List<ETicketVO> getBookingInfo() throws Exception;

	public List<MembersVO> getMemberList() throws Exception;

	public List<FlightDataVO> saleterm(FlightDataVO flightDataVO) throws Exception;
	public List<FlightDataVO> saletermAir(FlightDataVO flightDataVO) throws Exception;
	
	public List<FlightDataVO> airportpartList(FlightDataVO flightDataVO) throws Exception;
	
	public Integer tprice(FlightDataVO flightDataVO) throws Exception;
	public Double trate(FlightDataVO flightDataVO) throws Exception;
	public Integer ftotal(FlightDataVO flightDataVO) throws Exception;
	public Integer limoSum(String airport)throws Exception;
	public Integer limoTotalSum()throws Exception;
	public Integer limoTotalPerson(String airport)throws Exception;
	public Integer personSum()throws Exception;
	public Integer todaySum(String airport)throws Exception;
	public Integer limoTodaySum()throws Exception;
	public List<LimoVO> limoMember()throws Exception;
	
}
