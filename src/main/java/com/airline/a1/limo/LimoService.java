package com.airline.a1.limo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LimoService {
	
	@Autowired
	private LimoMapper limoMapper;
	
	public LimoVO myLimo(LimoVO limoVO)throws Exception{
		return limoMapper.myLimo(limoVO);
	}
	
	public int limoBook(LimoVO limoVO)throws Exception {
		return limoMapper.limoBook(limoVO);
	}
	
	public List<LimoInfoVO> limoInfo(LimoInfoVO limoInfoVO)throws Exception{
		return limoMapper.limoInfo(limoInfoVO);
	}
	
	public List<LimoVO> limoSelect(LimoVO limoVO)throws Exception{
		return limoMapper.limoSelect(limoVO);
	}

}
