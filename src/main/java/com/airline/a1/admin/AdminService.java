package com.airline.a1.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class AdminService {
	
	@Autowired
	private AdminMapper adminMapper;
	
	
	public List<AirlineVO> airlineList() throws Exception {
		return adminMapper.airlineList();	
	}
	
}
