  
package com.airline.a1.limo;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LimoMapper {
	
	public int limoBook(LimoVO limoVO)throws Exception;
	
	public List<LimoVO> myLimo(LimoVO limoVO)throws Exception;
	
	public List<LimoInfoVO> limoInfo(LimoInfoVO limoInfoVO)throws Exception;

	public List<LimoVO> limoSelect(LimoVO limoVO)throws Exception;
	
}