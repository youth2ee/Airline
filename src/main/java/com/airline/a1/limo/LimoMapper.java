package com.airline.a1.limo;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LimoMapper {
	
	public int limoBook(LimoVO limoVO)throws Exception;

}
