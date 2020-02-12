package com.airline.a1.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


@Repository
@Mapper
public interface AdminMapper {
	
	public List<AirlineVO> airlineList() throws Exception;
	
	
	
}
