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
	  public void bookingMain11(Booking booking)throws Exception{
	  
		  	System.out.println(booking.getAdults());
		  	System.out.println(booking.getArrLoc());
		  	System.out.println(booking.getChildren());
		  	System.out.println(booking.getDepLoc());
		  	System.out.println(booking.getKind());
		  	System.out.println(booking.getArrDate());
		  	System.out.println(booking.getDepDate());
	  
	  }
	 

	@GetMapping("bookingList")
	public void bookingList() throws Exception {
		
	}
	
	@GetMapping("bookingWrite")
	public void bookingWrite() throws Exception {
		
	}
}
