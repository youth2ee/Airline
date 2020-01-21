package com.airline.a1.checkIn;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/checkIn/**")
public class SeatController {
	@Autowired
	private SeatService seatService;
	
	@GetMapping("seat")
	public void seat(SeatVO seatVO) throws Exception{
		//ModelAndView mv = new ModelAndView();
		int result = seatService.seatBook(seatVO);
		String msg = "좌석 예매에 실패했습니다.";
		String path = "./";
		if(result > 0) 
			msg = "좌석 선택 성공";
		//return mv;
	}
}
