package com.airline.a1.booking;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/booking/**")
public class BookingController {
	
	@Autowired
	private BookingService bookingService;
	
	@GetMapping("bookingMain1")
	public void bookingMain1(Model model)throws Exception{
		List<String> airport = bookingService.airportList();
		model.addAttribute("airportList", airport);
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
	
	@PostMapping("bookingWrite")
	public String bookingWrite(CustomVO customVO) throws Exception {
		CustomVO customVO1 = customVO.getCustomVOList().get(0);
		CustomVO customVO2 = customVO.getCustomVOList().get(1);
		
		System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
		System.out.println(customVO1.getSex());
		System.out.println(customVO1.getFirstName().toUpperCase());
		System.out.println(customVO1.getLastName().toUpperCase());
		System.out.println(customVO1.getYear());
		System.out.println(customVO1.getMonth());
		System.out.println(customVO1.getDay());
		System.out.println(customVO1.getMemberNum());
		System.out.println(customVO1.getDepDis());
		System.out.println(customVO1.getArrDis());
		System.out.println("**************************************");
		System.out.println(customVO2.getSex());
		System.out.println(customVO2.getFirstName().toUpperCase());
		System.out.println(customVO2.getLastName().toUpperCase());
		System.out.println(customVO2.getYear());
		System.out.println(customVO2.getMonth());
		System.out.println(customVO2.getDay());
		System.out.println(customVO2.getMemberNum());
		System.out.println(customVO2.getDepDis());
		System.out.println(customVO2.getArrDis());
		System.out.println("**************************************");
		System.out.println(customVO.getResEmail());
		System.out.println(customVO.getChkEmail());
		System.out.println(customVO.getResPhone());
		System.out.println(customVO.getChkPhone());
		
		
		return "redirect:./bookingCheck";
	}
	
	@GetMapping("bookingCheck")
	public void bookingCheck() {
		
	}
	
}
