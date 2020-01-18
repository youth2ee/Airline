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
	public ModelAndView bookingMain(BookingVO bookingVO) throws Exception {
		BookingTicketVO bookingTicketVO = new BookingTicketVO();
		
		String kind = "편도";
		if (bookingVO.getKind() == 2) {
			kind = "왕복";
		} 
		
		bookingTicketVO.setKind(kind);
		bookingTicketVO.setDepLoc(bookingVO.getDepLoc());
		bookingTicketVO.setArrLoc(bookingVO.getArrLoc());
		bookingTicketVO.setAdult(bookingVO.getAdults());
		bookingTicketVO.setChild(bookingVO.getChildren());

		String date = bookingVO.getDate();
		String ddate = "";
		String adate = "";
		
		List<FlightDataVO> dairList = new ArrayList<FlightDataVO>();
		List<FlightDataVO> aairList = new ArrayList<FlightDataVO>();
		
		List<BookingVO> ddates = new ArrayList<BookingVO>();
		List<BookingVO> adates = new ArrayList<BookingVO>();
		
		if (bookingVO.getKind() == 1) {
			ddate = date.substring(6) + date.substring(3, 5) + date.substring(0, 2);
			bookingTicketVO.setDepStartTime(ddate);
			dairList = bookingService.airList(bookingTicketVO);
			
			for(FlightDataVO flightDataVO : dairList) {
				flightDataVO.setDepTime(flightDataVO.getDepPlandTime().substring(8, 10)+":"+flightDataVO.getDepPlandTime().substring(10));
				flightDataVO.setArrTime(flightDataVO.getArrPlandTime().substring(8, 10)+":"+flightDataVO.getArrPlandTime().substring(10));
			}

			for (int i = -5; i < 6; i++) { //선택한 날 -5일 부터 5일 뒤까지
				LocalDateTime ofDateTime = LocalDateTime.of(Integer.parseInt(date.substring(6)), Integer.parseInt(date.substring(0, 2)), Integer.parseInt(date.substring(3, 5)), 00, 00);
				LocalDateTime tomorrow = ofDateTime.plusDays(i);	
				String day = tomorrow.toString();
				
				BookingVO dep = new BookingVO();
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
			bookingTicketVO.setDepLoc(bookingVO.getArrLoc());
			bookingTicketVO.setArrLoc(bookingVO.getDepLoc());
			
			adate = date.substring(19) + date.substring(13, 15) + date.substring(16, 18) ;
			bookingTicketVO.setArrStartTime(adate);
			aairList = bookingService.airList(bookingTicketVO);
			
			for(FlightDataVO flightDataVO : aairList) {
				flightDataVO.setDepTime(flightDataVO.getDepPlandTime().substring(8, 10)+":"+flightDataVO.getDepPlandTime().substring(10));
				flightDataVO.setArrTime(flightDataVO.getArrPlandTime().substring(8, 10)+":"+flightDataVO.getArrPlandTime().substring(10));
			}
			
			
			for (int i = -5; i < 6; i++) { //선택한 날 -5일 부터 5일 뒤까지
				LocalDateTime ofDateTime = LocalDateTime.of(Integer.parseInt(date.substring(6,10)), Integer.parseInt(date.substring(0, 2)), Integer.parseInt(date.substring(3, 5)), 00, 00);
				LocalDateTime tomorrow = ofDateTime.plusDays(i);	
				String day = tomorrow.toString();
				
				BookingVO dep = new BookingVO();
				dep.setDay(day.substring(8, 10));
				dep.setMonth(day.substring(5, 7));
				dep.setYear(day.substring(0, 4));
				
				//2020-01-15T00:00
				ddates.add(dep);
				
				LocalDateTime ofDateTime2 = LocalDateTime.of(Integer.parseInt(date.substring(19)), Integer.parseInt(date.substring(13, 15)), Integer.parseInt(date.substring(16, 18)), 00, 00);
				LocalDateTime tomorrow2 = ofDateTime2.plusDays(i);
				String day2 = tomorrow2.toString();

				BookingVO arr = new BookingVO();
				arr.setDay(day2.substring(8, 10));
				arr.setMonth(day2.substring(5, 7));
				arr.setYear(day2.substring(0, 4));
				
				//2020-01-15T00:00
				adates.add(arr);
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
	public ModelAndView dateSelect(BookingVO bookingVO) throws Exception {
		List<FlightDataVO> dairList = new ArrayList<FlightDataVO>();
		List<FlightDataVO> aairList = new ArrayList<FlightDataVO>();

		String date = bookingVO.getYear().substring(0, 4) + bookingVO.getMonth().substring(0, 2) + bookingVO.getMonth().substring(4, 6); //

		BookingTicketVO bookingTicketVO = new BookingTicketVO();
		bookingTicketVO.setDepLoc(bookingVO.getDepLoc());
		bookingTicketVO.setArrLoc(bookingVO.getArrLoc());
		bookingTicketVO.setDepStartTime(date);

		if (bookingVO.getKind() == 1) {
			dairList = bookingService.airList(bookingTicketVO);
			for (FlightDataVO flightDataVO : dairList) {
				flightDataVO.setDepTime(flightDataVO.getDepPlandTime().substring(8, 10) + ":" + flightDataVO.getDepPlandTime().substring(10));
				flightDataVO.setArrTime(flightDataVO.getArrPlandTime().substring(8, 10) + ":" + flightDataVO.getArrPlandTime().substring(10));
			}

		} else if (bookingVO.getKind() == 2) {
			aairList = bookingService.airList(bookingTicketVO);
			for (FlightDataVO flightDataVO : aairList) {
				flightDataVO.setDepTime(flightDataVO.getDepPlandTime().substring(8, 10) + ":" + flightDataVO.getDepPlandTime().substring(10));
				flightDataVO.setArrTime(flightDataVO.getArrPlandTime().substring(8, 10) + ":" + flightDataVO.getArrPlandTime().substring(10));
			}
		}

		ModelAndView mv = new ModelAndView();
		mv.addObject("bookingVO", bookingVO);
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
		
		bookingTicketVO.getDepFnum();
		bookingTicketVO.getArrFnum();
		bookingTicketVO.getAdult();
		bookingTicketVO.getChild();
		bookingTicketVO.getKind();
		
		FlightDataVO flightDataVO = new FlightDataVO();
		flightDataVO.setFnum(bookingTicketVO.getDepFnum());
		bookingTicketVO.setDepInfo(bookingService.oneSelect(flightDataVO));
		
		flightDataVO.setFnum(bookingTicketVO.getArrFnum());
		bookingTicketVO.setArrInfo(bookingService.oneSelect(flightDataVO));			
		
		
		//
		/*
		 * mv.addObject("adults", adults); mv.addObject("children", children);
		 * mv.addObject("kind", kind);
		 */

		/*
		 * FlightDataVO dflightDataVO = new FlightDataVO();
		 * dflightDataVO.setFnum(Integer.parseInt(dfnumg)); dflightDataVO =
		 * bookingService.oneSelect(dflightDataVO); mv.addObject("dflightInfo",
		 * dflightDataVO);
		 * 
		 * 
		 * if (afnumg != "") { FlightDataVO aflightDataVO = new FlightDataVO();
		 * aflightDataVO.setFnum(Integer.parseInt(afnumg)); aflightDataVO =
		 * bookingService.oneSelect(aflightDataVO); mv.addObject("aflightInfo",
		 * aflightDataVO); }
		 */
		
		mv.addObject("bTVO", bookingTicketVO);

		mv.setViewName("/booking/bookingWrite");

		return mv;
	}

	@GetMapping("bookingWrite")
	public void bookingWrite() throws Exception {
	}

	@PostMapping("bookingWrite")
	public void bookingWrite(BookingTicketVO bookingTicketVO) throws Exception {
		
		ModelAndView mv = new ModelAndView();

		/*
		 * if (customVO.getAdultsVOList() != null) { for (CustomVO cuVo1 :
		 * customVO.getAdultsVOList()) { String y = Integer.toString(cuVo1.getYear());
		 * String m = Integer.toString(cuVo1.getMonth()); String d =
		 * Integer.toString(cuVo1.getDay());
		 * 
		 * if (m.length() == 1) { m = "0" + m; }
		 * 
		 * if (d.length() == 1) { d = "0" + d; }
		 * 
		 * BookingTicketVO k1VO = bookingTicketVO.getBTVOList().get(0);
		 * bookingTicketVO.setFnum(k1VO.getFnum());
		 * bookingTicketVO.setVihicleId(k1VO.getVihicleId());
		 * bookingTicketVO.setDepLoc(k1VO.getDepLoc());
		 * bookingTicketVO.setDepDate(k1VO.getDepDate());
		 * bookingTicketVO.setArrLoc(k1VO.getArrLoc());
		 * bookingTicketVO.setArrDate(k1VO.getArrDate());
		 * 
		 * bookingTicketVO.setBookingNum(bookingService.bookingNum(k1VO.getVihicleId()))
		 * ; bookingTicketVO.setId(""); bookingTicketVO.setGender(cuVo1.getSex());
		 * bookingTicketVO.setName(cuVo1.getFirstName().toUpperCase() + " " +
		 * cuVo1.getLastName().toUpperCase()); bookingTicketVO.setBirth(y + m + d);
		 * bookingTicketVO.setMemberNum("");
		 * bookingTicketVO.setEmailCheck(customVO.getChkEmail());
		 * bookingTicketVO.setSmsCheck(customVO.getChkPhone());
		 * bookingTicketVO.setAgeKind("adults");
		 * 
		 * bookingTicketVO.setEmail(customVO.getResEmail());
		 * bookingTicketVO.setPhone(customVO.getResPhone());
		 * 
		 * // bookingTicketVO.setPrice(k1VO.getPrice()); //결제 안했으므로 가격 막자
		 * bookingTicketVO.setPrice(0);
		 * 
		 * bookingService.bookingInsert(bookingTicketVO);
		 * 
		 * // 가격페이지에 보내기 cuVo1.setAgeKind("adults");
		 * cuVo1.setDepRealPrice(k1VO.getPrice());
		 * 
		 * FlightDataVO flightDataVO = new FlightDataVO();
		 * flightDataVO.setFnum(k1VO.getFnum());
		 * 
		 * List<FlightDataVO> flist = new ArrayList<FlightDataVO>(); FlightDataVO flVo =
		 * bookingService.oneSelect(flightDataVO);
		 * flVo.setPriceVO(bookingService.cPrice(k1VO.getPrice(), cuVo1.getDepDis()));
		 * flist.add(0, flVo); cuVo1.setFlightDataVO(flist);
		 * 
		 * if (bookingTicketVO.getBTVOList().size() == 2) { BookingTicketVO k2VO =
		 * bookingTicketVO.getBTVOList().get(1);
		 * bookingTicketVO.setFnum(k2VO.getFnum());
		 * bookingTicketVO.setVihicleId(k2VO.getVihicleId());
		 * bookingTicketVO.setDepLoc(k2VO.getDepLoc());
		 * bookingTicketVO.setDepDate(k2VO.getDepDate());
		 * bookingTicketVO.setArrLoc(k2VO.getArrLoc());
		 * bookingTicketVO.setArrDate(k2VO.getArrDate());
		 * 
		 * bookingTicketVO.setBookingNum(bookingService.bookingNum(k2VO.getVihicleId()))
		 * ; bookingTicketVO.setId(""); bookingTicketVO.setGender(cuVo1.getSex());
		 * bookingTicketVO .setName(cuVo1.getFirstName().toUpperCase() + " " +
		 * cuVo1.getLastName().toUpperCase()); bookingTicketVO.setBirth(y + m + d);
		 * bookingTicketVO.setMemberNum("");
		 * bookingTicketVO.setEmailCheck(customVO.getChkEmail());
		 * bookingTicketVO.setSmsCheck(customVO.getChkPhone());
		 * bookingTicketVO.setAgeKind("adults");
		 * 
		 * bookingTicketVO.setEmail(customVO.getResEmail());
		 * bookingTicketVO.setPhone(customVO.getResPhone());
		 * 
		 * // bookingTicketVO.setPrice(k2VO.getPrice()); //결제 안했으므로 가격 막자
		 * bookingTicketVO.setPrice(0);
		 * 
		 * bookingService.bookingInsert(bookingTicketVO); // 가격
		 * cuVo1.setAgeKind("adults"); cuVo1.setArrRealPrice(k2VO.getPrice());
		 * 
		 * flightDataVO.setFnum(k2VO.getFnum());
		 * 
		 * flVo = bookingService.oneSelect(flightDataVO);
		 * flVo.setPriceVO(bookingService.cPrice(k2VO.getPrice(), cuVo1.getArrDis()));
		 * flist.add(1, flVo); cuVo1.setFlightDataVO(flist); } } }
		 * 
		 * if (customVO.getChildrenVOList() != null) { for (CustomVO cuVo2 :
		 * customVO.getChildrenVOList()) { String y = Integer.toString(cuVo2.getYear());
		 * String m = Integer.toString(cuVo2.getMonth()); String d =
		 * Integer.toString(cuVo2.getDay());
		 * 
		 * if (m.length() == 1) { m = "0" + m; }
		 * 
		 * if (d.length() == 1) { d = "0" + d; }
		 * 
		 * BookingTicketVO k1VO = bookingTicketVO.getBTVOList().get(0);
		 * bookingTicketVO.setFnum(k1VO.getFnum());
		 * bookingTicketVO.setVihicleId(k1VO.getVihicleId());
		 * bookingTicketVO.setDepLoc(k1VO.getDepLoc());
		 * bookingTicketVO.setDepDate(k1VO.getDepDate());
		 * bookingTicketVO.setArrLoc(k1VO.getArrLoc());
		 * bookingTicketVO.setArrDate(k1VO.getArrDate());
		 * 
		 * bookingTicketVO.setBookingNum(bookingService.bookingNum(k1VO.getVihicleId()))
		 * ; bookingTicketVO.setId(""); bookingTicketVO.setGender(cuVo2.getSex());
		 * bookingTicketVO.setName(cuVo2.getFirstName().toUpperCase() + " " +
		 * cuVo2.getLastName().toUpperCase()); bookingTicketVO.setBirth(y + m + d);
		 * bookingTicketVO.setMemberNum("");
		 * bookingTicketVO.setEmailCheck(customVO.getChkEmail());
		 * bookingTicketVO.setSmsCheck(customVO.getChkPhone());
		 * bookingTicketVO.setAgeKind("children");
		 * 
		 * bookingTicketVO.setEmail(customVO.getResEmail());
		 * bookingTicketVO.setPhone(customVO.getResPhone());
		 * 
		 * // bookingTicketVO.setPrice(k1VO.getPrice()); //결제 안했으므로 가격 막자
		 * bookingTicketVO.setPrice(0);
		 * 
		 * bookingService.bookingInsert(bookingTicketVO);
		 * 
		 * // 가격 cuVo2.setAgeKind("children"); cuVo2.setDepRealPrice(k1VO.getPrice());
		 * 
		 * FlightDataVO flightDataVO = new FlightDataVO();
		 * flightDataVO.setFnum(k1VO.getFnum());
		 * 
		 * List<FlightDataVO> flist = new ArrayList<FlightDataVO>(); FlightDataVO flVo =
		 * bookingService.oneSelect(flightDataVO);
		 * flVo.setPriceVO(bookingService.cPrice(k1VO.getPrice(), cuVo2.getDepDis()));
		 * flist.add(0, flVo); cuVo2.setFlightDataVO(flist);
		 * 
		 * if (bookingTicketVO.getBTVOList().size() == 2) { BookingTicketVO k2VO =
		 * bookingTicketVO.getBTVOList().get(1);
		 * bookingTicketVO.setFnum(k2VO.getFnum());
		 * bookingTicketVO.setVihicleId(k2VO.getVihicleId());
		 * bookingTicketVO.setDepLoc(k2VO.getDepLoc());
		 * bookingTicketVO.setDepDate(k2VO.getDepDate());
		 * bookingTicketVO.setArrLoc(k2VO.getArrLoc());
		 * bookingTicketVO.setArrDate(k2VO.getArrDate());
		 * 
		 * bookingTicketVO.setBookingNum(bookingService.bookingNum(k2VO.getVihicleId()))
		 * ; bookingTicketVO.setId(""); bookingTicketVO.setGender(cuVo2.getSex());
		 * bookingTicketVO .setName(cuVo2.getFirstName().toUpperCase() + " " +
		 * cuVo2.getLastName().toUpperCase()); bookingTicketVO.setBirth(y + m + d);
		 * bookingTicketVO.setMemberNum("");
		 * bookingTicketVO.setEmailCheck(customVO.getChkEmail());
		 * bookingTicketVO.setSmsCheck(customVO.getChkPhone());
		 * bookingTicketVO.setAgeKind("children");
		 * 
		 * bookingTicketVO.setEmail(customVO.getResEmail());
		 * bookingTicketVO.setPhone(customVO.getResPhone());
		 * 
		 * // bookingTicketVO.setPrice(k2VO.getPrice()); //결제 안했으므로 가격 막자
		 * bookingTicketVO.setPrice(0);
		 * 
		 * bookingService.bookingInsert(bookingTicketVO);
		 * 
		 * // 가격 cuVo2.setAgeKind("children"); cuVo2.setArrRealPrice(k2VO.getPrice());
		 * 
		 * flightDataVO.setFnum(k2VO.getFnum());
		 * 
		 * flVo = bookingService.oneSelect(flightDataVO);
		 * flVo.setPriceVO(bookingService.cPrice(k2VO.getPrice(), cuVo2.getArrDis()));
		 * flist.add(1, flVo); cuVo2.setFlightDataVO(flist);
		 * 
		 * } } }
		 * 
		 * mv.addObject("customVO", customVO); mv.setViewName("booking/bookingCheck");
		 * return mv;
		 */
	}

	@GetMapping("bookingCheck")
	public void bookingCheck() {
	}

	@GetMapping("btest")
	public void btest() {

	}
	 
}
