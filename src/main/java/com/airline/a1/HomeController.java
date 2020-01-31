package com.airline.a1;

import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.airline.a1.weather.WeatherService;

	
@Controller
public class HomeController {
	
	@Autowired
	private WeatherService weatherService;
	
	@GetMapping("/")
	public String Home(Model model, Elements els, String airLine) throws Exception {
		
		if(airLine == null) {
			airLine = "RKSI/인천공항/1";
			
		}
		String [] split = airLine.split("/");
		
		model.addAttribute("weather2", weatherService.WeatherInfo2(split));
		model.addAttribute("weather", weatherService.WeatherInfo(split));
		
		return "index";
	}

	@GetMapping("indexSearch")
	public void indexSearch(Model model, String search) {
		System.out.println(search);
		model.addAttribute("search", search);
	}
	
	
	@PostMapping("indexSearch")
	public void indexSearch() {
		
	}
	
}

