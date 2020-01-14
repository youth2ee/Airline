package com.airline.a1.weather;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface weatherMapper {

	public int weatherInsert(WeatherVO weatherVO)throws Exception;
}
