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
		String dep = bookingVO.getDepLoc();
		String arr = bookingVO.getArrLoc();

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
			
			bookingVO.setSdate(year1+month1+day1+"0000");
			bookingVO.setEdate(year1+month1+day1+"2359");
			
			bookingVO.setDepLoc(dep);
			bookingVO.setArrLoc(arr);
			
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

			bookingVO.setSdate(year1+month1+day1+"0000");
			bookingVO.setEdate(year1+month1+day1+"2359");

			bookingVO.setDepLoc(dep);
			bookingVO.setArrLoc(arr);
			
			dairList = bookingService.airList(bookingVO);
			for(FlightDataVO flightDataVO : dairList) {
				flightDataVO.setDepTime(flightDataVO.getDepPlandTime().substring(8, 10)+":"+flightDataVO.getDepPlandTime().substring(10));
				flightDataVO.setArrTime(flightDataVO.getArrPlandTime().substring(8, 10)+":"+flightDataVO.getArrPlandTime().substring(10));
			}
			
			bookingVO.setSdate(year2+month2+day2+"0000");
			bookingVO.setEdate(year2+month2+day2+"2359");
			
			bookingVO.setArrLoc(dep);
			bookingVO.setDepLoc(arr);
			
			aairList = bookingService.airList(bookingVO);
			for(FlightDataVO flightDataVO : aairList) {
				flightDataVO.setDepTime(flightDataVO.getDepPlandTime().substring(8, 10)+":"+flightDataVO.getDepPlandTime().substring(10));
				flightDataVO.setArrTime(flightDataVO.getArrPlandTime().substring(8, 10)+":"+flightDataVO.getArrPlandTime().substring(10));
			}
			
		} 
		
	
		List<BookingVO> ddates = new ArrayList<BookingVO>();
		List<BookingVO> adates = new ArrayList<BookingVO>();
		
		for (int i = -5; i < 6; i++) { //선택한 날 -5일 부터 5일 뒤까지
			LocalDateTime ofDateTime = LocalDateTime.of(Integer.parseInt(year1), Integer.parseInt(month1), Integer.parseInt(day1), 00, 00);
			LocalDateTime tomorrow = ofDateTime.plusDays(i);	
			
			String day = tomorrow.toString();
			
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
				
				String day = tomorrow.toString();

				BookingVO bookingVO2 = new BookingVO();
				bookingVO2.setDay(day.substring(8, 10));
				bookingVO2.setMonth(day.substring(5, 7));
				bookingVO2.setYear(day.substring(0, 4));
				
				//2020-01-15T00:00
				adates.add(bookingVO2);
			}
		}

		ModelAndView mv = new ModelAndView();
		mv.addObject("dep", dep);
		mv.addObject("arr", arr);
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

		d1 = d1.substring(0,4); 
		d2 = d2.substring(0,2) + d2.substring(4, 6);
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
	public ModelAndView bookingWritePre(String dfnumg, String afnumg, int adults, int children, String kind) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.addObject("adults", adults);
		mv.addObject("children", children);
		mv.addObject("kind", kind);
		
		FlightDataVO dflightDataVO = new FlightDataVO();
		dflightDataVO.setFnum(Integer.parseInt(dfnumg));	
		dflightDataVO = bookingService.oneSelect(dflightDataVO);
		mv.addObject("dflightInfo", dflightDataVO);
		
		System.out.println(afnumg);
		
		if (afnumg != "") {
			FlightDataVO aflightDataVO = new FlightDataVO();
			aflightDataVO.setFnum(Integer.parseInt(afnumg));	
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
	public ModelAndView bookingWrite(CustomVO customVO, BookingTicketVO bookingTicketVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		if (customVO.getAdultsVOList() != null) {
			for(CustomVO cuVo1 : customVO.getAdultsVOList()) {
				String y = Integer.toString(cuVo1.getYear());
				String m = Integer.toString(cuVo1.getMonth());
				String d = Integer.toString(cuVo1.getDay());

				if(m.length() == 1) {
					m = "0"+m;
				}
				
				if(d.length() == 1) {
					d = "0"+d;
				}
				
				BookingTicketVO k1VO = bookingTicketVO.getBTVOList().get(0);
				bookingTicketVO.setFnum(k1VO.getFnum());
				bookingTicketVO.setVihicleId(k1VO.getVihicleId()); 
				bookingTicketVO.setDepLoc(k1VO.getDepLoc());
				bookingTicketVO.setDepDate(k1VO.getDepDate()); 
				bookingTicketVO.setArrLoc(k1VO.getArrLoc());
				bookingTicketVO.setArrDate(k1VO.getArrDate());
				
				bookingTicketVO.setBookingNum(k1VO.getVihicleId()+k1VO.getPrice()+k1VO.getFlightTime());
				bookingTicketVO.setId("");
				bookingTicketVO.setGender(cuVo1.getSex());
				bookingTicketVO.setName(cuVo1.getFirstName().toUpperCase()+" "+cuVo1.getLastName().toUpperCase());
				bookingTicketVO.setBirth(y+m+d);
				bookingTicketVO.setMemberNum("");
				bookingTicketVO.setEmailCheck(customVO.getChkEmail());
				bookingTicketVO.setSmsCheck(customVO.getChkPhone());
				bookingTicketVO.setAgeKind("adults");
				
				bookingTicketVO.setEmail(customVO.getResEmail());
				bookingTicketVO.setPhone(customVO.getResPhone());
				
				//bookingTicketVO.setPrice(k1VO.getPrice());
				//결제 안했으므로 가격 막자
				bookingTicketVO.setPrice(0);
				
				bookingService.bookingInsert(bookingTicketVO);
				
				//가격페이지에 보내기
				cuVo1.setAgeKind("adults");
				cuVo1.setDepRealPrice(k1VO.getPrice());

				FlightDataVO flightDataVO = new FlightDataVO();
				flightDataVO.setFnum(k1VO.getFnum());
				
				List<FlightDataVO> flist = new ArrayList<FlightDataVO>();
				flist.add(0,bookingService.oneSelect(flightDataVO));
				cuVo1.setFlightDataVO(flist);
				
				List<BookingPriceVO> plist = new ArrayList<BookingPriceVO>();
				plist.add(0, bookingService.cPrice(k1VO.getPrice(), cuVo1.getDepDis()));
				cuVo1.setPriceVO(plist);
				
				if(bookingTicketVO.getBTVOList().size() == 2) {
					BookingTicketVO k2VO = bookingTicketVO.getBTVOList().get(1);
					bookingTicketVO.setFnum(k2VO.getFnum());
					bookingTicketVO.setVihicleId(k2VO.getVihicleId()); 
					bookingTicketVO.setDepLoc(k2VO.getDepLoc());
					bookingTicketVO.setDepDate(k2VO.getDepDate()); 
					bookingTicketVO.setArrLoc(k2VO.getArrLoc());
					bookingTicketVO.setArrDate(k2VO.getArrDate());
					
					bookingTicketVO.setBookingNum(k2VO.getVihicleId()+k2VO.getPrice()+k2VO.getFlightTime());
					bookingTicketVO.setId("");
					bookingTicketVO.setGender(cuVo1.getSex());
					bookingTicketVO.setName(cuVo1.getFirstName().toUpperCase()+" "+cuVo1.getLastName().toUpperCase());
					bookingTicketVO.setBirth(y+m+d);
					bookingTicketVO.setMemberNum("");
					bookingTicketVO.setEmailCheck(customVO.getChkEmail());
					bookingTicketVO.setSmsCheck(customVO.getChkPhone());
					bookingTicketVO.setAgeKind("adults");
					
					bookingTicketVO.setEmail(customVO.getResEmail());
					bookingTicketVO.setPhone(customVO.getResPhone());
					
					//bookingTicketVO.setPrice(k2VO.getPrice());
					//결제 안했으므로 가격 막자
					bookingTicketVO.setPrice(0);
					
					bookingService.bookingInsert(bookingTicketVO);
					//가격
					cuVo1.setAgeKind("adults");
					cuVo1.setArrRealPrice(k2VO.getPrice());

					flightDataVO.setFnum(k2VO.getFnum());
					
					flist.add(1,bookingService.oneSelect(flightDataVO));
					cuVo1.setFlightDataVO(flist);
					
					plist.add(1, bookingService.cPrice(k2VO.getPrice(), cuVo1.getArrDis()));
					cuVo1.setPriceVO(plist);
					
				}
			}
		}
		
		if (customVO.getChildrenVOList() != null) {
			for(CustomVO cuVo2 : customVO.getChildrenVOList()) {
				String y = Integer.toString(cuVo2.getYear());
				String m = Integer.toString(cuVo2.getMonth());
				String d = Integer.toString(cuVo2.getDay());

				if(m.length() == 1) {
					m = "0"+m;
				}
				
				if(d.length() == 1) {
					d = "0"+d;
				}
				
				BookingTicketVO k1VO = bookingTicketVO.getBTVOList().get(0);
				bookingTicketVO.setFnum(k1VO.getFnum());
				bookingTicketVO.setVihicleId(k1VO.getVihicleId()); 
				bookingTicketVO.setDepLoc(k1VO.getDepLoc());
				bookingTicketVO.setDepDate(k1VO.getDepDate()); 
				bookingTicketVO.setArrLoc(k1VO.getArrLoc());
				bookingTicketVO.setArrDate(k1VO.getArrDate());
				
				bookingTicketVO.setBookingNum(k1VO.getVihicleId()+k1VO.getPrice()+k1VO.getFlightTime());
				bookingTicketVO.setId("");
				bookingTicketVO.setGender(cuVo2.getSex());
				bookingTicketVO.setName(cuVo2.getFirstName().toUpperCase()+" "+cuVo2.getLastName().toUpperCase());
				bookingTicketVO.setBirth(y+m+d);
				bookingTicketVO.setMemberNum("");
				bookingTicketVO.setEmailCheck(customVO.getChkEmail());
				bookingTicketVO.setSmsCheck(customVO.getChkPhone());
				bookingTicketVO.setAgeKind("children");
				
				bookingTicketVO.setEmail(customVO.getResEmail());
				bookingTicketVO.setPhone(customVO.getResPhone());
				
				//bookingTicketVO.setPrice(k1VO.getPrice());
				//결제 안했으므로 가격 막자
				bookingTicketVO.setPrice(0);

				bookingService.bookingInsert(bookingTicketVO);

				//가격
				cuVo2.setAgeKind("children");
				cuVo2.setDepRealPrice(k1VO.getPrice());
				
				FlightDataVO flightDataVO = new FlightDataVO();
				flightDataVO.setFnum(k1VO.getFnum());
				
				List<FlightDataVO> flist = new ArrayList<FlightDataVO>();
				flist.add(0, bookingService.oneSelect(flightDataVO));
				cuVo2.setFlightDataVO(flist);
				
				List<BookingPriceVO> plist = new ArrayList<BookingPriceVO>();
				plist.add(0, bookingService.cPrice(k1VO.getPrice(), cuVo2.getDepDis()));
				cuVo2.setPriceVO(plist);
				
				if(bookingTicketVO.getBTVOList().size() == 2) {
					BookingTicketVO k2VO = bookingTicketVO.getBTVOList().get(1);
					bookingTicketVO.setFnum(k2VO.getFnum());
					bookingTicketVO.setVihicleId(k2VO.getVihicleId()); 
					bookingTicketVO.setDepLoc(k2VO.getDepLoc());
					bookingTicketVO.setDepDate(k2VO.getDepDate()); 
					bookingTicketVO.setArrLoc(k2VO.getArrLoc());
					bookingTicketVO.setArrDate(k2VO.getArrDate());
					
					bookingTicketVO.setBookingNum(k2VO.getVihicleId()+k2VO.getPrice()+k2VO.getFlightTime());
					bookingTicketVO.setId("");
					bookingTicketVO.setGender(cuVo2.getSex());
					bookingTicketVO.setName(cuVo2.getFirstName().toUpperCase()+" "+cuVo2.getLastName().toUpperCase());
					bookingTicketVO.setBirth(y+m+d);
					bookingTicketVO.setMemberNum("");
					bookingTicketVO.setEmailCheck(customVO.getChkEmail());
					bookingTicketVO.setSmsCheck(customVO.getChkPhone());
					bookingTicketVO.setAgeKind("children");
					
					bookingTicketVO.setEmail(customVO.getResEmail());
					bookingTicketVO.setPhone(customVO.getResPhone());
					
					//bookingTicketVO.setPrice(k2VO.getPrice());
					//결제 안했으므로 가격 막자
					bookingTicketVO.setPrice(0);
					
					bookingService.bookingInsert(bookingTicketVO);

					//가격
					cuVo2.setAgeKind("children");
					cuVo2.setArrRealPrice(k2VO.getPrice());
					
					flightDataVO.setFnum(k2VO.getFnum());
					
					flist.add(1, bookingService.oneSelect(flightDataVO));
					cuVo2.setFlightDataVO(flist);
					
					plist.add(1, bookingService.cPrice(k2VO.getPrice(), cuVo2.getArrDis()));
					cuVo2.setPriceVO(plist);
					
				}
			}
		}
		
		mv.addObject("customVO", customVO);
		mv.setViewName("booking/bookingCheck");
		return mv;
	}
	

	@GetMapping("bookingCheck")
	public void bookingCheck() {
	}

}
