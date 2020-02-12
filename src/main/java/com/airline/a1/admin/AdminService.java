package com.airline.a1.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airline.a1.booking.FlightDataVO;



@Service
public class AdminService {
	
	@Autowired
	private AdminMapper adminMapper;
	
	
	public List<AirlineVO> airlineList() throws Exception {
		return adminMapper.airlineList();	
	}
	
	public List<FlightDataVO> airpartList(FlightDataVO flightDataVO) throws Exception {
		return adminMapper.airpartList(flightDataVO);
	}
	
	public List<FlightDataVO> airallList() throws Exception {
		return adminMapper.airallList();
	}
	
}
