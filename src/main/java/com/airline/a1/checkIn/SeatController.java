package com.airline.a1.checkIn;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/checkIn/**")
public class SeatController {
	@GetMapping("seat")
	public void seat() throws Exception{
		
	}
}
