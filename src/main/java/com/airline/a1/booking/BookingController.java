package com.airline.a1.booking;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.Adler32;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/booking/**")
public class BookingController {

	@Autowired
	private BookingService bookingService;
	

	@PostMapping("airportDepList")
	public ModelAndView airportDepList(HttpServletRequest req)throws Exception{
		String depLoc = req.getParameter("depLoc");	

		ModelAndView mv = new ModelAndView();
	
		List<BookingTicketVO> ar = bookingService.airportDepList(depLoc);	
		
		 mv.addObject("arrLoc", ar); 
		 mv.setViewName("booking/common/result");
		
		return mv;

	}
	
	@ResponseBody
	@GetMapping("airportCheck")
	public boolean airportCheck(BookingTicketVO bookingTicketVO)throws Exception{
	
		String depLoc = bookingTicketVO.getDepLoc();

		String arrLoc = bookingTicketVO.getArrLoc();
		
		List<String> ar= bookingService.airportList();
		
		List<BookingTicketVO> ar2 = bookingService.airportDepList(depLoc);

		boolean check = false;
				
		for(String airPort : ar) {
			
			if(depLoc.equals(airPort)) {
				
				
				for(BookingTicketVO bookingTicketVO2 : ar2) {
					
					if(arrLoc.equals(bookingTicketVO2.getArrAirportNm())) {
						check = true;
					}
					
					
				}	
			}
		}
		
		return check;
	}
	
	

	@GetMapping("bookingMain")
	public void bookingMain(Model model)throws Exception{
		List<String> airport = bookingService.airportList();
		model.addAttribute("airportList", airport);
	}
	

	

	@PostMapping("bookingMain") 
	public ModelAndView bookingMain(BookingTicketVO bookingTicketVO) throws Exception {	

		String date = bookingTicketVO.getDate();
		String ddate = "";
		String adate = "";
		
		List<FlightDataVO> dairList = new ArrayList<FlightDataVO>();
		List<FlightDataVO> aairList = new ArrayList<FlightDataVO>();
		
		List<BookingTicketVO> ddates = new ArrayList<>();
		List<BookingTicketVO> adates = new ArrayList<>();
		
		if (bookingTicketVO.equals("편도")) {
			ddate = date.substring(6) + date.substring(0, 2) + date.substring(3, 5);
			System.out.println(ddate);
			bookingTicketVO.setDepStartTime(ddate);
			dairList = bookingService.airList(bookingTicketVO);
			
			for(FlightDataVO flightDataVO : dairList) {
				System.out.println(flightDataVO.getAirlineNm());
				flightDataVO.setDepTime(flightDataVO.getDepPlandTime().substring(8, 10)+":"+flightDataVO.getDepPlandTime().substring(10));
				flightDataVO.setArrTime(flightDataVO.getArrPlandTime().substring(8, 10)+":"+flightDataVO.getArrPlandTime().substring(10));
			}

			for (int i = -5; i < 6; i++) { //선택한 날 -5일 부터 5일 뒤까지
				LocalDateTime ofDateTime = LocalDateTime.of(Integer.parseInt(date.substring(6)), Integer.parseInt(date.substring(0, 2)), Integer.parseInt(date.substring(3, 5)), 00, 00);
				LocalDateTime tomorrow = ofDateTime.plusDays(i);	
				String day = tomorrow.toString();
				
				BookingTicketVO dep = new BookingTicketVO();
				dep.setDay(day.substring(8, 10));
				dep.setMonth(day.substring(5, 7));
				dep.setYear(day.substring(0, 4));
				
				//2020-01-15T00:00
				ddates.add(dep);
			}
				
			
		} else {
			ddate = date.substring(6,10) + date.substring(0, 2) + date.substring(3, 5) ;
			bookingTicketVO.setDepStartTime(ddate);
			dairList = bookingService.airList(bookingTicketVO);
			
			for(FlightDataVO flightDataVO : dairList) {
				flightDataVO.setDepTime(flightDataVO.getDepPlandTime().substring(8, 10)+":"+flightDataVO.getDepPlandTime().substring(10));
				flightDataVO.setArrTime(flightDataVO.getArrPlandTime().substring(8, 10)+":"+flightDataVO.getArrPlandTime().substring(10));
			}
		
			//
			String depLoc = bookingTicketVO.getDepLoc();
			String arrLoc = bookingTicketVO.getArrLoc();
			
			bookingTicketVO.setDepLoc(arrLoc);
			bookingTicketVO.setArrLoc(depLoc);
			
			adate = date.substring(19) + date.substring(13, 15) + date.substring(16, 18) ;
			bookingTicketVO.setDepStartTime(adate);
			aairList = bookingService.airList(bookingTicketVO);
			
			for(FlightDataVO flightDataVO : aairList) {
				flightDataVO.setDepTime(flightDataVO.getDepPlandTime().substring(8, 10)+":"+flightDataVO.getDepPlandTime().substring(10));
				flightDataVO.setArrTime(flightDataVO.getArrPlandTime().substring(8, 10)+":"+flightDataVO.getArrPlandTime().substring(10));
			}
			
			
			for (int i = -5; i < 6; i++) { //선택한 날 -5일 부터 5일 뒤까지
				LocalDateTime ofDateTime = LocalDateTime.of(Integer.parseInt(date.substring(6,10)), Integer.parseInt(date.substring(0, 2)), Integer.parseInt(date.substring(3, 5)), 00, 00);
				LocalDateTime tomorrow = ofDateTime.plusDays(i);	
				String day = tomorrow.toString();
				
				BookingTicketVO dep = new BookingTicketVO();
				dep.setDay(day.substring(8, 10));
				dep.setMonth(day.substring(5, 7));
				dep.setYear(day.substring(0, 4));
				
				//2020-01-15T00:00
				ddates.add(dep);
				
				LocalDateTime ofDateTime2 = LocalDateTime.of(Integer.parseInt(date.substring(19)), Integer.parseInt(date.substring(13, 15)), Integer.parseInt(date.substring(16, 18)), 00, 00);
				LocalDateTime tomorrow2 = ofDateTime2.plusDays(i);
				String day2 = tomorrow2.toString();

				BookingTicketVO arr = new BookingTicketVO();
				arr.setDay(day2.substring(8, 10));
				arr.setMonth(day2.substring(5, 7));
				arr.setYear(day2.substring(0, 4));
				
				//2020-01-15T00:00
				adates.add(arr);
			}	
		}
		
		ModelAndView mv = new ModelAndView();

		mv.addObject("bookingVO", bookingTicketVO);
		mv.addObject("Dlist", ddates);
		mv.addObject("Alist", adates);
		mv.addObject("DairList", dairList);
		mv.addObject("AairList", aairList);
		mv.setViewName("booking/bookingList");

		return mv;
	}
	
	
	@GetMapping("dateSelect")
	public ModelAndView dateSelect( BookingTicketVO bookingTicketVO) throws Exception {
		List<FlightDataVO> dairList = new ArrayList<FlightDataVO>();
		List<FlightDataVO> aairList = new ArrayList<FlightDataVO>();

		String date = bookingTicketVO.getYear().substring(0, 4) + bookingTicketVO.getMonth().substring(0, 2) + bookingTicketVO.getMonth().substring(4, 6); //
		bookingTicketVO.setDepStartTime(date);

		dairList = bookingService.airList(bookingTicketVO);
		for (FlightDataVO flightDataVO : dairList) {
			flightDataVO.setDepTime(flightDataVO.getDepPlandTime().substring(8, 10) + ":" + flightDataVO.getDepPlandTime().substring(10));
			flightDataVO.setArrTime(flightDataVO.getArrPlandTime().substring(8, 10) + ":" + flightDataVO.getArrPlandTime().substring(10));
		}
		
		if (bookingTicketVO.getKind().equals("왕복")) {
			aairList = bookingService.airList(bookingTicketVO);
			for (FlightDataVO flightDataVO : aairList) {
				flightDataVO.setDepTime(flightDataVO.getDepPlandTime().substring(8, 10) + ":" + flightDataVO.getDepPlandTime().substring(10));
				flightDataVO.setArrTime(flightDataVO.getArrPlandTime().substring(8, 10) + ":" + flightDataVO.getArrPlandTime().substring(10));
			}
		} 

		ModelAndView mv = new ModelAndView();
		mv.addObject("bookingVO", bookingTicketVO);
		mv.addObject("DairList", dairList);
		mv.addObject("AairList", aairList);
		mv.setViewName("booking/common/dateList");

		return mv;
	}


	@GetMapping("bookingList")
	public void bookingList() throws Exception {

	}

	@PostMapping("bookingWritePre")
	public ModelAndView bookingWritePre(BookingTicketVO bookingTicketVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		FlightDataVO flightDataVO = new FlightDataVO();
		flightDataVO.setFnum(bookingTicketVO.getDepFnum());
		bookingTicketVO.setDepInfo(bookingService.oneSelect(flightDataVO));
		
		
		if (bookingTicketVO.getKind().equals("2")) {
			flightDataVO.setFnum(bookingTicketVO.getArrFnum());
			bookingTicketVO.setArrInfo(bookingService.oneSelect(flightDataVO));
		}
		
		mv.addObject("bTVO", bookingTicketVO);
		mv.setViewName("/booking/bookingWrite");

		return mv;
	}

	@GetMapping("bookingWrite")
	public void bookingWrite() throws Exception {
	}

	@PostMapping("bookingWrite")
	public ModelAndView bookingWrite(BookingTicketVO bookingTicketVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		//id
		String id = "test";
		
		///bookingNum 만들기
		String bookingNum = "bnum";
		
		String memberNum = "111";
		
		//어른
		if(bookingTicketVO.getAdultList() != null) {
			for(BookingTicketVO adult : bookingTicketVO.getAdultList()) {
				adult.setBookingNum(bookingNum);
				adult.setId(id);
				adult.setMemberNum(memberNum);
				
				//flightnum 가는편 만들기
				adult.setFlightBNum("flightBNum");
				
				String kind = "편도";
				if(bookingTicketVO.getKind().equals("2")) {
					kind = "왕복";
					adult.setArrFnum(bookingTicketVO.getArrFnum());
				}
				adult.setKind(kind);
				
				adult.setAdult(1);
				adult.setDepFnum(bookingTicketVO.getDepFnum());
				
				FlightDataVO flightDataVO = new FlightDataVO();
				flightDataVO.setFnum(bookingTicketVO.getDepFnum());
				adult.setDepInfo(bookingService.oneSelect(flightDataVO));
				
		
				adult.setResEmail(bookingTicketVO.getResEmail());
				adult.setResECheck(bookingTicketVO.getResECheck());
				adult.setResPhone(bookingTicketVO.getResPhone());
				adult.setResPCheck(bookingTicketVO.getResPCheck());
				
				adult.setName(adult.getLastName().toUpperCase() +" "+adult.getFirstName().toUpperCase());
				
				if(adult.getMonth().length() == 1) {
					adult.setMonth("0"+adult.getMonth());
				}				
				if(adult.getDay().length() == 1) {
					adult.setDay("0"+adult.getDay());
				}
				adult.setBirth(adult.getYear()+adult.getMonth()+adult.getDay());
				
				bookingService.bookingInsert(adult);
				
				//가격
				bookingService.priceCount(adult);
				adult = bookingService.priceCount(adult);
				
				if (bookingTicketVO.getKind().equals("2")) {
					//flightnum 오는편 만들기
					adult.setFlightBNum("flightBNum");
					
					int dep = adult.getDepFnum();
					int arr = adult.getArrFnum();
					adult.setDepFnum(arr);
					adult.setArrFnum(dep);
					
					flightDataVO = new FlightDataVO();
					flightDataVO.setFnum(bookingTicketVO.getDepFnum());
					adult.setDepInfo(bookingService.oneSelect(flightDataVO));
					
					flightDataVO.setFnum(bookingTicketVO.getArrFnum());
					adult.setArrInfo(bookingService.oneSelect(flightDataVO));
					
					
					bookingService.bookingInsert(adult);
					
					//가격
					adult.setDepFnum(dep);
					adult.setArrFnum(arr);
				   	adult = bookingService.priceCount(adult);
				}
			}//어른 반복문 끝
		}//어른 끝
		
		//어린이
		if(bookingTicketVO.getChildList() != null) {
			for(BookingTicketVO child : bookingTicketVO.getChildList()) {
				child.setBookingNum(bookingNum);
				child.setId(id);
				child.setMemberNum("111");
				
				//flightnum 가는편 만들기
				child.setFlightBNum("flightBNum");
				
				String kind = "편도";
				if(bookingTicketVO.getKind().equals("2")) {
					kind = "왕복";
					child.setArrFnum(bookingTicketVO.getArrFnum());
				}
				child.setKind(kind);
				
				child.setChild(1);
				child.setDepFnum(bookingTicketVO.getDepFnum());
				
				FlightDataVO flightDataVO = new FlightDataVO();
				flightDataVO.setFnum(bookingTicketVO.getDepFnum());
				child.setDepInfo(bookingService.oneSelect(flightDataVO));
				
				child.setResEmail(bookingTicketVO.getResEmail());
				child.setResECheck(bookingTicketVO.getResECheck());
				child.setResPhone(bookingTicketVO.getResPhone());
				child.setResPCheck(bookingTicketVO.getResPCheck());
				
				child.setName(child.getLastName().toUpperCase() +" "+child.getFirstName().toUpperCase());
				
				if(child.getMonth().length() == 1) {
					child.setMonth("0"+child.getMonth());
				}				
				if(child.getDay().length() == 1) {
					child.setDay("0"+child.getDay());
				}
				child.setBirth(child.getYear()+child.getMonth()+child.getDay());
				
				bookingService.bookingInsert(child);
				
				//가격
				bookingService.priceCount(child);
				child = bookingService.priceCount(child);
				
				//왕복일때
				if (bookingTicketVO.getKind().equals("2")) {
					//flightnum 오는편 만들기
					child.setFlightBNum("flightBNum");
					
					int dep = child.getDepFnum();
					int arr = child.getArrFnum();
					child.setDepFnum(arr);
					child.setArrFnum(dep);
					
					flightDataVO = new FlightDataVO();
					flightDataVO.setFnum(bookingTicketVO.getDepFnum());
					child.setDepInfo(bookingService.oneSelect(flightDataVO));
					
					flightDataVO.setFnum(bookingTicketVO.getArrFnum());
					child.setArrInfo(bookingService.oneSelect(flightDataVO));
					
					bookingService.bookingInsert(child);
					
					//가격
					child.setDepFnum(dep);
					child.setArrFnum(arr);
					bookingService.priceCount(child);
					child = bookingService.priceCount(child);
				}
			}//어린이 반복문 끝
		}//어린이 끝
		
		mv.addObject("alist", bookingTicketVO.getAdultList());
		mv.addObject("clist", bookingTicketVO.getChildList());
		mv.setViewName("booking/bookingCheck");
		
		return mv;
	}

	@GetMapping("bookingCheck")
	public void bookingCheck() {
	}

		
	
	 
}