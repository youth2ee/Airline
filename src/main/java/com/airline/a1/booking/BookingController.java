package com.airline.a1.booking;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Iterator;
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

		/*
		 * System.out.println(bookingVO.getKind());
		 * System.out.println(bookingVO.getDepLoc());
		 * System.out.println(bookingVO.getArrLoc());
		 * System.out.println(bookingVO.getDate());
		 * System.out.println(bookingVO.getAdults());
		 * System.out.println(bookingVO.getChildren());
		 */
		
		int kind = bookingVO.getKind();
		String date  = bookingVO.getDate();
		
		String day1 = "";
		String month1 = "";
		String year1 = "";
		String day2 = "";
		String month2 = "";
		String year2 = "";
		
		List<FlightDataVO> dairList = new ArrayList<FlightDataVO>();
		List<FlightDataVO> aairList = new ArrayList<FlightDataVO>();
		
		if(kind == 1) { //편도 01/16/2020
			month1 = date.substring(0, 2);
			day1 = date.substring(3, 5);
			year1 = date.substring(6);
			
			//System.out.println("일"+day1);
			//System.out.println("월"+month1);
			//System.out.println("년"+year1);
			//System.out.println(year1 + month1 + day1 + "0000"); 
			
			bookingVO.setSdate(year1+month1+day1+"0000");
			bookingVO.setEdate(year1+month1+day1+"2359");
			
			dairList = bookingService.airList(bookingVO);
			for(FlightDataVO flightDataVO : dairList) {
				flightDataVO.setDepTime(flightDataVO.getDepPlandTime().substring(8, 10)+":"+flightDataVO.getDepPlandTime().substring(10));
				flightDataVO.setArrTime(flightDataVO.getArrPlandTime().substring(8, 10)+":"+flightDataVO.getArrPlandTime().substring(10));
			}
			
			

		} else if (kind == 2) { //왕복 01/15/2020 - 01/15/2020
			month1 = date.substring(0, 2);
			day1 = date.substring(3, 5);
			year1 = date.substring(6,10);
			
			month2 = date.substring(13, 15);
			day2 = date.substring(16, 18);
			year2 = date.substring(19);
			
			//System.out.println("일"+day1);
			//System.out.println("월"+month1);
			//System.out.println("년"+year1);
			
			//System.out.println("일"+day2);
			//System.out.println("월"+month2);
			//System.out.println("년"+year2);
			
			bookingVO.setSdate(year1+month1+day1+"0000");
			bookingVO.setEdate(year1+month1+day1+"2359");
			
			dairList = bookingService.airList(bookingVO);
			for(FlightDataVO flightDataVO : dairList) {
				flightDataVO.setDepTime(flightDataVO.getDepPlandTime().substring(8, 10)+":"+flightDataVO.getDepPlandTime().substring(10));
				flightDataVO.setArrTime(flightDataVO.getArrPlandTime().substring(8, 10)+":"+flightDataVO.getArrPlandTime().substring(10));
			}
			
			
			bookingVO.setSdate(year2+month2+day2+"0000");
			bookingVO.setEdate(year2+month2+day2+"2359");
			
			String aloc = bookingVO.getDepLoc();
			String dloc = bookingVO.getArrLoc();
			
			bookingVO.setArrLoc(dloc);
			bookingVO.setDepLoc(aloc);
			
			aairList = bookingService.airList(bookingVO);
			for(FlightDataVO flightDataVO : aairList) {
				flightDataVO.setDepTime(flightDataVO.getDepPlandTime().substring(8, 10)+":"+flightDataVO.getDepPlandTime().substring(10));
				flightDataVO.setArrTime(flightDataVO.getArrPlandTime().substring(8, 10)+":"+flightDataVO.getArrPlandTime().substring(10));
			}
			
		} 
		

		//가는편		
		List<BookingVO> ddates = new ArrayList<BookingVO>();
		List<BookingVO> adates = new ArrayList<BookingVO>();
		
		for (int i = -5; i < 6; i++) { //선택한 날 -5일 부터 5일 뒤까지
			LocalDateTime ofDateTime = LocalDateTime.of(Integer.parseInt(year1), Integer.parseInt(month1), Integer.parseInt(day1), 00, 00);
			LocalDateTime tomorrow = ofDateTime.plusDays(i);
			System.out.println("tomorrow"+tomorrow);	
			
			String day = tomorrow.toString();
			System.out.println(day.substring(0, 4));
			System.out.println(day.substring(5, 7));
			System.out.println(day.substring(8, 10));
			
			BookingVO bookingVO2 = new BookingVO();
			bookingVO2.setDay(day.substring(8, 10));
			bookingVO2.setMonth(day.substring(5, 7));
			bookingVO2.setYear(day.substring(0, 4));
			
			//2020-01-15T00:00
			ddates.add(bookingVO2);
		}
		
		if (kind == 2) {
			for (int i = -5; i < 6; i++) { //선택한 날 -5일 부터 5일 뒤까지
				LocalDateTime ofDateTime = LocalDateTime.of(Integer.parseInt(year2), Integer.parseInt(month2), Integer.parseInt(day2), 00, 00);
				LocalDateTime tomorrow = ofDateTime.plusDays(i);
				System.out.println("tomorrow"+tomorrow);	
				
				String day = tomorrow.toString();
				System.out.println(day.substring(0, 4));
				System.out.println(day.substring(5, 7));
				System.out.println(day.substring(8, 10));
				
				BookingVO bookingVO2 = new BookingVO();
				bookingVO2.setDay(day.substring(8, 10));
				bookingVO2.setMonth(day.substring(5, 7));
				bookingVO2.setYear(day.substring(0, 4));
				
				//2020-01-15T00:00
				adates.add(bookingVO2);
			}

		}

		ModelAndView mv = new ModelAndView();
		mv.addObject("bookingVO", bookingVO);
		mv.addObject("Dlist", ddates);
		mv.addObject("Alist", adates);
		mv.addObject("DairList", dairList);
		mv.addObject("AairList", aairList);
		mv.setViewName("booking/bookingList");

		return mv;
	}
	
	
	@GetMapping("dateSelect")
	public ModelAndView dateSelect(String d1, String d2, BookingVO bookingVO, int pos) throws Exception {
		System.out.println(d1);
		System.out.println(d2);
		System.out.println(bookingVO.getDepLoc());
		System.out.println(bookingVO.getArrLoc());

		d1 = d1.substring(0,4); 
		d2 = d2.substring(0,2) + d2.substring(4, 6);

		System.out.println(d1); System.out.println(d2);
		System.out.println(d1+d2+"0000");

		String sdate = d1+d2+"0000";
		String edate = d1+d2+"2359";

		List<FlightDataVO> dairList = new ArrayList<FlightDataVO>();
		List<FlightDataVO> aairList = new ArrayList<FlightDataVO>();

		bookingVO.setSdate(sdate);
		bookingVO.setEdate(edate);

		if(pos == 1) { 
			dairList = bookingService.airList(bookingVO); 
		for(FlightDataVO flightDataVO : dairList) {
			flightDataVO.setDepTime(flightDataVO.getDepPlandTime().substring(8,10)+":"+flightDataVO.getDepPlandTime().substring(10));
			flightDataVO.setArrTime(flightDataVO.getArrPlandTime().substring(8,10)+":"+flightDataVO.getArrPlandTime().substring(10)); 
			}


		} else if (pos == 2) { 
			String aloc = bookingVO.getDepLoc(); 
			String dloc = bookingVO.getArrLoc();

		bookingVO.setArrLoc(dloc); 
		bookingVO.setDepLoc(aloc);

		aairList = bookingService.airList(bookingVO); 
		for(FlightDataVO flightDataVO : aairList) {
			flightDataVO.setDepTime(flightDataVO.getDepPlandTime().substring(8, 10)+":"+flightDataVO.getDepPlandTime().substring(10));
			flightDataVO.setArrTime(flightDataVO.getArrPlandTime().substring(8,10)+":"+flightDataVO.getArrPlandTime().substring(10)); }
		}


		ModelAndView mv = new ModelAndView();
		mv.addObject("bookingVO", bookingVO);
		mv.addObject("pos", pos);

		mv.addObject("DairList", dairList); 
		mv.addObject("AairList", aairList);

		mv.setViewName("booking/common/dateList");

		return mv;
	}



	@GetMapping("bookingList")
	public void bookingList() throws Exception {

	}
	
	@PostMapping("bookingWritePre")
	public ModelAndView bookingWritePre(String dfnum, String afnum, int adults, int children, String kind) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.addObject("adults", adults);
		mv.addObject("children", children);
		mv.addObject("kind", kind);
		
		System.out.println(dfnum+"dfnum");
		
		FlightDataVO dflightDataVO = new FlightDataVO();
		dflightDataVO.setFnum(Integer.parseInt(dfnum));	
		dflightDataVO = bookingService.oneSelect(dflightDataVO);
		mv.addObject("dflightInfo", dflightDataVO);
		
		System.out.println(afnum);
		
		if (afnum != "") {
			FlightDataVO aflightDataVO = new FlightDataVO();
			aflightDataVO.setFnum(Integer.parseInt(afnum));	
			aflightDataVO = bookingService.oneSelect(aflightDataVO);
			mv.addObject("aflightInfo", aflightDataVO);			
		}
		
		mv.setViewName("/booking/bookingWrite");
		
		return mv;
	}

	@GetMapping("bookingWrite")
	public void bookingWrite() throws Exception {	
	}

	@PostMapping("bookingWrite")
	public String bookingWrite(CustomVO customVO) throws Exception {
		
		if (customVO.getAdultsVOList() != null) {
			for(CustomVO cuVo1 : customVO.getAdultsVOList()) {
				
				System.out.println(cuVo1.getSex());
				System.out.println(cuVo1.getFirstName().toUpperCase());
				System.out.println(cuVo1.getLastName().toUpperCase());
				System.out.println(cuVo1.getYear());
				System.out.println(cuVo1.getMonth());
				System.out.println(cuVo1.getDay());
				System.out.println(cuVo1.getMemberNum());
				System.out.println(cuVo1.getDepDis());
				System.out.println(cuVo1.getArrDis());
			}
		}
		
		if (customVO.getChildrenVOList() != null) {
			for(CustomVO cuVo2 : customVO.getChildrenVOList()) {
				
				System.out.println(cuVo2.getSex());
				System.out.println(cuVo2.getFirstName().toUpperCase());
				System.out.println(cuVo2.getLastName().toUpperCase());
				System.out.println(cuVo2.getYear());
				System.out.println(cuVo2.getMonth());
				System.out.println(cuVo2.getDay());
				System.out.println(cuVo2.getMemberNum());
				System.out.println(cuVo2.getDepDis());
				System.out.println(cuVo2.getArrDis());
			}
		}
		
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
