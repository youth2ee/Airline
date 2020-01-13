package com.airline.a1.park;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("park/**")
public class ParkController {
	
	@RequestMapping("ParkMain")
	public void parkmain() throws Exception{
		
	}
}
