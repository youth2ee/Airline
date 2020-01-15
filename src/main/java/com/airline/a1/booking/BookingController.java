package com.airline.a1.booking;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/booking/**")
public class BookingController {


	@Autowired
	private BookingService bookingService;



	@GetMapping("bookingMain")
	public void bookingMain(Model model)throws Exception{
		List<String> airport = bookingService.airportList();
		model.addAttribute("airportList", airport);

	}


	@PostMapping("bookingMain") 
	public ModelAndView bookingMain1(BookingVO bookingVO) throws Exception{

		System.out.println(bookingVO.getKind());
		System.out.println(bookingVO.getDepLoc());
		System.out.println(bookingVO.getArrLoc());
		System.out.println(bookingVO.getDate());
		System.out.println(bookingVO.getAdults());
		System.out.println(bookingVO.getChildren());
		
		
		int kind = bookingVO.getKind();
		String date  = bookingVO.getDate();
		
		
		if(kind == 1 ) { //편도 01/16/2020
			
			
		} else if (kind == 2) { //왕복 01/15/2020 - 01/15/2020
			
		} 
		
		
		

		ModelAndView mv = new ModelAndView();
		mv.addObject("bookingVO", bookingVO);
		mv.setViewName("./booking/bookingList");

		return mv;

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
