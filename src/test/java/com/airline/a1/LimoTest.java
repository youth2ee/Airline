package com.airline.a1;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import com.airline.a1.limo.LimoService;
import com.airline.a1.limo.LimoVO;

@SpringBootTest
class LimoTest {
	
	private LimoService limoService;
	
	@Test
	void limoBookTest()throws Exception {
		
		LimoVO limoVO = new LimoVO();
		for(int i=0; i<20; i++) {
			limoVO.setLimoPrice(50000);
			limoVO.setId("ck"+i);
			limoVO.setDepLoc("Incheon"+i);
			limoVO.setArrLoc("Busan"+i);
			
		}
	}

}
