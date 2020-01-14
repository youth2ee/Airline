package com.airline.a1.booking;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/booking/**")
public class BookingController {
	
	@GetMapping("bookingMain1")
	public void bookingMain1()throws Exception{
		
	}
	
	
	  @PostMapping("bookingMain1") 
	  public void bookingMain11(BookingVO booking)throws Exception{
	  
	  
	  }
	 

	@GetMapping("bookingList")
	public void bookingList() throws Exception {
		
	}
	
	@GetMapping("bookingWrite")
	public void bookingWrite() throws Exception {
		
	}
}
