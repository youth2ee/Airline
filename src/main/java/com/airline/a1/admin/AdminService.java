package com.airline.a1.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airline.a1.booking.FlightDataVO;
import com.airline.a1.checkIn.ETicketVO;



@Service
public class AdminService {
	
	@Autowired
	private AdminMapper adminMapper;
	
	
	public List<AirlineVO> airlineList() throws Exception {
		return adminMapper.airlineList();	
	}
	
	public List<AirportVO> airportList() throws Exception {
		return adminMapper.airportList();	
	}
	
	public List<FlightDataVO> airpartList(FlightDataVO flightDataVO) throws Exception {
		return adminMapper.airpartList(flightDataVO);
	}
	
	public List<FlightDataVO> airallList() throws Exception {
		return adminMapper.airallList();
	}
	public List<ETicketVO> getBookingInfo() throws Exception {
		return adminMapper.getBookingInfo();
	}
	
	//전체매출
	public List<FlightDataVO> saleterm(FlightDataVO flightDataVO) throws Exception {
		return adminMapper.saleterm(flightDataVO);
	}

	
	public List<FlightDataVO> saletermAir(FlightDataVO flightDataVO) throws Exception {
		return adminMapper.saleterm(flightDataVO);
	}
}
