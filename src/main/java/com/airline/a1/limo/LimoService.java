package com.airline.a1.limo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LimoService {
	
	@Autowired
	private LimoMapper limoMapper;
	
	public int limoBook(LimoVO limoVO)throws Exception {
		return limoMapper.limoBook(limoVO);
	} 

}
