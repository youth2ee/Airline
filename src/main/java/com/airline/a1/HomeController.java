package com.airline.a1;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jsoup.select.Elements;
import org.snu.ids.ha.index.Keyword;
import org.snu.ids.ha.index.KeywordExtractor;
import org.snu.ids.ha.index.KeywordList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.airline.a1.board.BoardVO;
import com.airline.a1.board.NoticeVO;
import com.airline.a1.booking.BookingService;
import com.airline.a1.booking.BookingTicketVO;
import com.airline.a1.booking.FlightDataVO;
import com.airline.a1.weather.WeatherService;

@Controller
public class HomeController {

	@Autowired
	private WeatherService weatherService;

	@Autowired
	private SearchService searchService;
	
	@Autowired
	private BookingService bookingService;

	@GetMapping("/")
	public String Home(Model model, Elements els, String airLine) throws Exception {

		if (airLine == null) {
			airLine = "RKSI/인천공항/1";

		}
		String[] split = airLine.split("/");

		model.addAttribute("weather2", weatherService.WeatherInfo2(split));
		model.addAttribute("weather", weatherService.WeatherInfo(split));
		
		
		List<String> airport = bookingService.airportList();
		model.addAttribute("airportList", airport);
		

		return "index";
	}

	@GetMapping("indexSearch")
	public void indexSearch(Model model, String search) throws Exception {
		if (search != "") {
			/* System.out.println(search); */
			List<BoardVO> ar = searchService.searchTotalList(search);
			
			  for(BoardVO con:ar) { 
				  String tcon = con.getTextContents();
			  
				  int num = tcon.indexOf(search);
				  int tlen = tcon.length();
				  
				/* System.out.println(num); */
				  
				  if(num > 10) {
					  tcon = tcon.substring(num-10);
				  } else {
					  tcon = tcon.substring(0);
				}
				  con.setTextContents(tcon);
			  }
			 
			model.addAttribute("search", search);
			model.addAttribute("tlist", ar);
			
			List<SearchVO> cr = searchService.realList();
			model.addAttribute("rList", cr);
			
			SearchVO searchVO = new SearchVO();
			searchVO.setSearch(search);

			String msg = "";

			/*
			 * String string = search; try { MorphemeAnalyzer ma = new MorphemeAnalyzer();
			 * ma.createLogger(null); Timer timer = new Timer(); timer.start();
			 * List<MExpression> ret = ma.analyze(string); timer.stop();
			 * timer.printMsg("Time"); ret = ma.postProcess(ret); ret =
			 * ma.leaveJustBest(ret); List<Sentence> stl = ma.divideToSentences(ret); for(
			 * int i = 0; i < stl.size(); i++ ) { Sentence st = stl.get(i);
			 * 
			 * System.out.println("=============================================  " +
			 * st.getSentence());
			 * 
			 * for( int j = 0; j < st.size(); j++ ) { System.out.println(st.get(j)); msg =
			 * msg + "/" + st.get(j); } } ma.closeLogger(); } catch (Exception e) {
			 * e.printStackTrace(); }
			 */
			
			// string to extract keywords 
			String strToExtrtKwrd = search; 
			// init KeywordExtractor 
			KeywordExtractor ke = new KeywordExtractor(); 
			// extract keywords 
			KeywordList kl = ke.extractKeyword(strToExtrtKwrd, true);
			 

			// print result
			if(search.contains(" ")) {
				if(kl.size() >= 4) {
				  for(int i = 0; i < kl.size(); i++ ) {
					  
					  if(i == 1) {
						  Keyword kwrd = kl.get(i); 
						  msg = kwrd.getString();
						  
						  if(search.contains("스")) {
							  searchVO.setSvoca(search);
						  }else {
							  searchVO.setSvoca(msg);
						  }
						  
						  searchService.searchInsert(searchVO);
					  	}
					  
					  
					  
					  }
				}
			}else {
				if(kl.size() >= 3) {
					  for(int i = 0; i < kl.size(); i++ ) {
						  if(i == 1) {
							  Keyword kwrd = kl.get(i); 
							/* System.out.println(kwrd.getString() + "\t" + kwrd.getCnt()); */
							  msg = kwrd.getString();
							  
							  if(search.contains("스")) {
								  searchVO.setSvoca(search);
							  }else {
								  searchVO.setSvoca(msg);
							  }
							  
							  searchService.searchInsert(searchVO);
						  }
					  }
				} else if (kl.size() == 1) {
					  for(int i = 0; i < kl.size(); i++ ) {
							  Keyword kwrd = kl.get(i); 
						/* System.out.println(kwrd.getString() + "\t" + kwrd.getCnt()); */
							  msg = kwrd.getString();
							  
							  if(search.contains("스")) {
								  searchVO.setSvoca(search);
							  }else {
								  searchVO.setSvoca(msg);
							  }
							  
							  searchService.searchInsert(searchVO);
						  }
				} else {
					  for(int i = 0; i < kl.size(); i++ ) {
						  Keyword kwrd = kl.get(i); 
						/* System.out.println(kwrd.getString() + "\t" + kwrd.getCnt()); */
						  msg = kwrd.getString();
						  
						  if(search.contains("우한")) {
							  searchVO.setSvoca(search);
						  }
						  searchService.searchInsert(searchVO);
					  }
				}
			}
		}
	}

	@PostMapping("indexSearch")
	public void indexSearch() {

	}

	@GetMapping("searchSelect")
	public ModelAndView searchSelect(String menu, String search) throws Exception {
		NoticeVO noticeVO = new NoticeVO();
		noticeVO.setTitle(search);
		noticeVO.setWriter(menu);

		List<BoardVO> ar = new ArrayList<BoardVO>();

		if (menu.equals("전체")) {
			ar = searchService.searchTotalList(search);
		} else {
			ar = searchService.searchList(noticeVO);
		}
		
		  for(BoardVO con:ar) { 
			  String tcon = con.getTextContents();
			  
			  int num = tcon.indexOf(search);
			  int tlen = tcon.length();
			  
			  if(num > 10) {
				  tcon = tcon.substring(num-10);
			  } else {
				  tcon = tcon.substring(num);
			}
			  con.setTextContents(tcon);
		  }
		

		ModelAndView mv = new ModelAndView();
		mv.addObject("list", ar);
		mv.setViewName("layout/searchList");

		return mv;

	}
	
	@GetMapping("rlist")
	public ModelAndView rlist() throws Exception {
		ModelAndView mv = new ModelAndView();
		
		List<SearchVO> cr = searchService.realList();
		mv.addObject("rList", cr);
		mv.setViewName("layout/rlist");
		
		return mv;
	}
	
	
	//예약
	@PostMapping("airportDepList")
	public ModelAndView airportDepList(HttpServletRequest req) throws Exception {
		String depLoc = req.getParameter("depLoc");

		ModelAndView mv = new ModelAndView();

		List<BookingTicketVO> ar = bookingService.airportDepList(depLoc);

		mv.addObject("arrLoc", ar);
		mv.setViewName("booking/common/result");

		return mv;
	}
	
	@ResponseBody
	@GetMapping("airportCheck")
	public boolean airportCheck(BookingTicketVO bookingTicketVO) throws Exception {

		String depLoc = bookingTicketVO.getDepLoc();
		String arrLoc = bookingTicketVO.getArrLoc();
		List<String> ar = bookingService.airportList();
		List<BookingTicketVO> ar2 = bookingService.airportDepList(depLoc);

		boolean check = false;

		for (String airPort : ar) {
			if (depLoc.equals(airPort)) {
				for (BookingTicketVO bookingTicketVO2 : ar2) {
					if (arrLoc.equals(bookingTicketVO2.getArrAirportNm())) {
						check = true;
					}
				}
			}
		}

		return check;
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

		if (bookingTicketVO.getKind().equals("편도")) {
			ddate = date.substring(6) + date.substring(0, 2) + date.substring(3, 5);
			bookingTicketVO.setDepStartTime(ddate);
			dairList = bookingService.airList(bookingTicketVO);

			for (FlightDataVO flightDataVO : dairList) {
				flightDataVO.setDepTime(flightDataVO.getDepPlandTime().substring(8, 10) + ":"
						+ flightDataVO.getDepPlandTime().substring(10));
				flightDataVO.setArrTime(flightDataVO.getArrPlandTime().substring(8, 10) + ":"
						+ flightDataVO.getArrPlandTime().substring(10));
			}

			for (int i = -5; i < 6; i++) { // 선택한 날 -5일 부터 5일 뒤까지
				LocalDateTime ofDateTime = LocalDateTime.of(Integer.parseInt(date.substring(6)),
						Integer.parseInt(date.substring(0, 2)), Integer.parseInt(date.substring(3, 5)), 00, 00);
				LocalDateTime tomorrow = ofDateTime.plusDays(i);
				String day = tomorrow.toString();

				BookingTicketVO dep = new BookingTicketVO();
				dep.setDay(day.substring(8, 10));
				dep.setMonth(day.substring(5, 7));
				dep.setYear(day.substring(0, 4));

				// 2020-01-15T00:00
				ddates.add(dep);
			}

		} else {
		
			ddate = date.substring(6, 10) + date.substring(0, 2) + date.substring(3, 5);
			bookingTicketVO.setDepStartTime(ddate);
			dairList = bookingService.airList(bookingTicketVO);

			for (FlightDataVO flightDataVO : dairList) {
				flightDataVO.setDepTime(flightDataVO.getDepPlandTime().substring(8, 10) + ":"
						+ flightDataVO.getDepPlandTime().substring(10));
				flightDataVO.setArrTime(flightDataVO.getArrPlandTime().substring(8, 10) + ":"
						+ flightDataVO.getArrPlandTime().substring(10));
			}

			//
			String depLoc = bookingTicketVO.getDepLoc();
			String arrLoc = bookingTicketVO.getArrLoc();

			bookingTicketVO.setDepLoc(arrLoc);
			bookingTicketVO.setArrLoc(depLoc);

			adate = date.substring(19) + date.substring(13, 15) + date.substring(16, 18);
			bookingTicketVO.setDepStartTime(adate);
			aairList = bookingService.airList(bookingTicketVO);

			for (FlightDataVO flightDataVO : aairList) {
				flightDataVO.setDepTime(flightDataVO.getDepPlandTime().substring(8, 10) + ":"
						+ flightDataVO.getDepPlandTime().substring(10));
				flightDataVO.setArrTime(flightDataVO.getArrPlandTime().substring(8, 10) + ":"
						+ flightDataVO.getArrPlandTime().substring(10));
			}

			for (int i = -5; i < 6; i++) { // 선택한 날 -5일 부터 5일 뒤까지
				LocalDateTime ofDateTime = LocalDateTime.of(Integer.parseInt(date.substring(6, 10)),
						Integer.parseInt(date.substring(0, 2)), Integer.parseInt(date.substring(3, 5)), 00, 00);
				LocalDateTime tomorrow = ofDateTime.plusDays(i);
				String day = tomorrow.toString();

				BookingTicketVO dep = new BookingTicketVO();
				dep.setDay(day.substring(8, 10));
				dep.setMonth(day.substring(5, 7));
				dep.setYear(day.substring(0, 4));

				// 2020-01-15T00:00
				ddates.add(dep);

				LocalDateTime ofDateTime2 = LocalDateTime.of(Integer.parseInt(date.substring(19)),
						Integer.parseInt(date.substring(13, 15)), Integer.parseInt(date.substring(16, 18)), 00, 00);
				LocalDateTime tomorrow2 = ofDateTime2.plusDays(i);
				String day2 = tomorrow2.toString();

				BookingTicketVO arr = new BookingTicketVO();
				arr.setDay(day2.substring(8, 10));
				arr.setMonth(day2.substring(5, 7));
				arr.setYear(day2.substring(0, 4));

				// 2020-01-15T00:00
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
	
}
