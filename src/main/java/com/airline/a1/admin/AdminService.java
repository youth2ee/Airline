package com.airline.a1.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airline.a1.booking.FlightDataVO;
import com.airline.a1.limo.LimoVO;



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
	
	public Integer limoSum(String airport) throws Exception{
		return adminMapper.limoSum(airport);
	}
	
	public Integer limoTotalSum()throws Exception{
		return adminMapper.limoTotalSum();
	}
	
	public Integer limoTotalPerson(String airport)throws Exception{
		return adminMapper.limoTotalPerson(airport);
	}
	
	public Integer personSum() throws Exception{
		return adminMapper.personSum();
	}
	
	public Integer todaySum(String airport)throws Exception{
		return adminMapper.todaySum(airport);
	}
	
	public Integer limoTodaySum() throws Exception{
		return adminMapper.limoTodaySum();
	}
}
