package com.airline.a1.park;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("park/**")
public class ParkController {
	
	@Autowired
	private ParkService parkService;
	
	@RequestMapping("ParkMain")
	public ModelAndView parkmain(ModelAndView mv) throws Exception{
		//parkService.test();
		//parkService.tttttt();
		
		List<ParkInfoVO> ar =parkService.apiTest();
		mv.addObject("list", ar);
		mv.setViewName("park/ParkMain");
		return mv;
	}
	@GetMapping("ParkRes")
	public void ParkRes() throws Exception{
		
	}
	
	@GetMapping("parkCheck")
	public ModelAndView parkCheck(ModelAndView mv, pReservationVO pReservationVO) throws Exception{
		
		List<pReservationVO> ar = parkService.parkCheck(pReservationVO);
		mv.addObject("list", ar);
		mv.setViewName("park/parkCheck");
		return mv;
	}
	
	@PostMapping("resInsert")
	public ModelAndView resInsert(ModelAndView mv, pReservationVO pReservationVO) throws Exception{
		int result = parkService.resInsert(pReservationVO);
		
		mv.setViewName("park/ParkMain");
		return mv;
	}
	
}
