package com.airline.a1.limo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LimoService {
	
	@Autowired
	private LimoMapper limoMapper;
	
	public int limoBook(LimoVO limoVO)throws Exception {
		String [] split = limoVO.getSeat().split("번");
		int result = 0;
//		for (int i = 0; i < split.length; i++) {
//			split [i] = split [i].replace("번", "");
//			limoVO.setSeat(split[i]);
//		}
		result = limoMapper.limoBook(limoVO);
		return result;
	}
	
	public List<LimoInfoVO> limoInfo(LimoInfoVO limoInfoVO)throws Exception{
		return limoMapper.limoInfo(limoInfoVO);
	}
	
	public List<LimoVO> limoSelect(LimoVO limoVO)throws Exception{
		return limoMapper.limoSelect(limoVO);
	}
	
	public List<LimoVO> myLimo(LimoVO limoVO)throws Exception{
		return limoMapper.myLimo(limoVO);
	}

}