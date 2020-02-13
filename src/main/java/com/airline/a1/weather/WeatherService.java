package com.airline.a1.weather;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

@Service
public class WeatherService {
	
	
	public String WeatherInfo(String [] split)throws Exception {
		String url="https://www.weatheri.co.kr/forecast/forecast03.php?aircode="+split[0]+"&a_name="+split[1]+"&k="+split[2]+"";
		Document doc = null;
		
		doc = Jsoup.connect(url).get();
		Elements els = doc.select("body > table:nth-child(4) > tbody > tr:nth-child(3) > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > table");
		
		
		String els2 = els.toString().replace("..", "https://www.weatheri.co.kr");
		els2 = els2.replace("CAVOK", "<img src=\"https://www.weatheri.co.kr/images/icon_2013_01/01.png\" width=\"70\" alt=\"맑음\">");
		return els2;
	}
	
	public String WeatherInfo2(String [] split) throws Exception{
		String url="https://www.weatheri.co.kr/forecast/forecast03.php?aircode="+split[0]+"&a_name="+split[1]+"&k="+split[2]+"";
		Document doc = null;
		
		doc = Jsoup.connect(url).get();
		
		Elements els = doc.select("body > table:nth-child(4) > tbody > tr:nth-child(3) > td:nth-child(2) > table > tbody > tr:nth-child(6) > td > table");
		
		String els2 = els.toString().replace("..", "https://www.weatheri.co.kr");
		
		
		return els2;
	}
}