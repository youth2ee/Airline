package com.airline.a1.park;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("park/**")
public class ParkController {
	
	@Autowired
	private ParkService parkService;
	
	@RequestMapping("ParkMain")
	public void parkmain() throws Exception{
		parkService.main(null);
	}
}
