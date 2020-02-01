package com.airline.a1.weather;

import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("weather/**")
public class WeatherController {
	
	@Autowired
	private WeatherService weatherService;
	
	@GetMapping("weatherInfo")
	public void weatherInfo(Model model, Elements els, String airLine)throws Exception{
		if(airLine == null) {
			airLine = "RKSI/인천공항/1";
			
		}
		String [] split = airLine.split("/");
		
		
		model.addAttribute("weather2", weatherService.WeatherInfo2(split));
		model.addAttribute("weather", weatherService.WeatherInfo(split));
	}

	
}