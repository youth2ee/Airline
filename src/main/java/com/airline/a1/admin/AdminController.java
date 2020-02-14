package com.airline.a1.admin;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Conditional;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.airline.a1.booking.FlightDataVO;
import com.airline.a1.park.ParkInfoVO;
import com.airline.a1.park.ParkService;
import com.airline.a1.park.pInfoVO;
import com.airline.a1.park.pReservationVO;
import com.airline.a1.checkIn.ETicketVO;
import com.airline.a1.member.MembersVO;
import com.airline.a1.board.BoardVO;
import com.airline.a1.board.NoticeService;
import com.airline.a1.board.NoticeVO;
import com.airline.a1.boardUtil.Pager;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;

@Controller
@RequestMapping("/admin/**")
public class AdminController {
	
	/*
	 * @GetMapping public void main() throws Exception{
	 * 
	 * }
	 */
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private NoticeService noticeService;
	
	@Autowired
	private ParkService parkService;
	
	
	@GetMapping("adminmain")
	public void adminmain() throws Exception{
		
	}
	
	@GetMapping("admin1_1")
	public void admin1_1(Model model) throws Exception{
		List<AirlineVO> airlineVOs = adminService.airlineList();
		model.addAttribute("alist", airlineVOs);
		
		FlightDataVO flightDataVO = new FlightDataVO();
		
		if(flightDataVO.getAirlineNm() == null) {
			flightDataVO.setAirlineNm("");
		}
		
		  SimpleDateFormat format1 = new SimpleDateFormat ("yyyy-MM-dd");
		  Date time = new Date(); 
		  String today = format1.format(time); //오늘 날짜
		 		

		  //월 
		  //2020-02-01 ~ 2020-02-29
		  flightDataVO.setDepPlandTime("2020-02-01");
		  flightDataVO.setArrPlandTime("2020-02-29 23:59:59");
		  
		  List<FlightDataVO> smlist = adminService.saleterm(flightDataVO);
		  
		  //주 
		  //2020-01-26 ~ 2020-02-01
		  flightDataVO.setDepPlandTime("2020-02-11");
		  flightDataVO.setArrPlandTime("2020-02-17 23:59:59");
		  
		  List<FlightDataVO> swlist = adminService.saleterm(flightDataVO);
		  
		/*
		 * //2020-02-02 ~ 2020-02-08 flightDataVO.setDepPlandTime("2020-02-02");
		 * flightDataVO.setArrPlandTime("2020-02-08");
		 * 
		 * List<FlightDataVO> sw2list = adminService.saleterm(flightDataVO);
		 * 
		 * //2020-02-09 ~ 2020-02-15 flightDataVO.setDepPlandTime("2020-02-09");
		 * flightDataVO.setArrPlandTime("2020-02-15");
		 * 
		 * List<FlightDataVO> sw3list = adminService.saleterm(flightDataVO);
		 * 
		 * //2020-02-16 ~ 2020-02-22 flightDataVO.setDepPlandTime("2020-02-16");
		 * flightDataVO.setArrPlandTime("2020-02-22");
		 * 
		 * List<FlightDataVO> sw4list = adminService.saleterm(flightDataVO);
		 * 
		 * //2020-02-23 ~ 2020-02-29 flightDataVO.setDepPlandTime("2020-02-23");
		 * flightDataVO.setArrPlandTime("2020-02-29");
		 * 
		 * List<FlightDataVO> sw5list = adminService.saleterm(flightDataVO);
		 */

		  
		  //일 오늘 2020-02-01 ~ 2020-02-01 23:59:59
		  flightDataVO.setDepPlandTime(today);
		  flightDataVO.setArrPlandTime(today+" 23:59:59");
		  
		  List<FlightDataVO> sdlist = adminService.saleterm(flightDataVO);
		  
		  
		  model.addAttribute("smlist", smlist);
		  model.addAttribute("swlist", swlist);
		/*
		 * model.addAttribute("sw2list", sw2list); model.addAttribute("sw3list",
		 * sw3list); model.addAttribute("sw4list", sw4list);
		 * model.addAttribute("sw5list", sw5list);
		 */
		  model.addAttribute("sdlist", sdlist);
		
		
	}
	
	@GetMapping("admin1_1_layout")
	public ModelAndView admin1_1_layout(FlightDataVO flightDataVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		//depPlandTime : 산출 시작일 2020-00-00
		//arrPlandTime : 산출 마감일 2020-00-00
		//airlineNm : 항공사 이름 ajax로 받아오기 -> 전체 받으려면 ''로 만들어줘야 한다. null은 안됨
	
		
		  SimpleDateFormat format1 = new SimpleDateFormat ("yyyy-MM-dd");
		  Date time = new Date(); 
		  String today = format1.format(time); //오늘 날짜
		 		

		  //월 
		  //2020-02-01 ~ 2020-02-29
		  flightDataVO.setDepPlandTime("2020-02-01");
		  flightDataVO.setArrPlandTime("2020-02-29 23:59:59");
		  
		  List<FlightDataVO> smlist = adminService.saleterm(flightDataVO);
		  
		  //주 
		  //2020-01-26 ~ 2020-02-01
		  flightDataVO.setDepPlandTime("2020-01-26");
		  flightDataVO.setArrPlandTime("2020-02-01 23:59:59");
		  
		  List<FlightDataVO> sw1list = adminService.saleterm(flightDataVO);
		  
		  //2020-02-02 ~ 2020-02-08
		  flightDataVO.setDepPlandTime("2020-02-02");
		  flightDataVO.setArrPlandTime("2020-02-08 23:59:59");
		  
		  List<FlightDataVO> sw2list = adminService.saleterm(flightDataVO);
		  
		  //2020-02-09 ~ 2020-02-15
		  flightDataVO.setDepPlandTime("2020-02-09");
		  flightDataVO.setArrPlandTime("2020-02-15 23:59:59");
		  
		  List<FlightDataVO> sw3list = adminService.saleterm(flightDataVO);
		  
		  //2020-02-16 ~ 2020-02-22
		  flightDataVO.setDepPlandTime("2020-02-16");
		  flightDataVO.setArrPlandTime("2020-02-22 23:59:59");
		  
		  List<FlightDataVO> sw4list = adminService.saleterm(flightDataVO);
		  
		  //2020-02-23 ~ 2020-02-29
		  flightDataVO.setDepPlandTime("2020-02-23");
		  flightDataVO.setArrPlandTime("2020-02-29 23:59:59");
		  
		  List<FlightDataVO> sw5list = adminService.saleterm(flightDataVO);

		  
		  //일 오늘 2020-02-01 ~ 2020-02-01 23:59:59
		  flightDataVO.setDepPlandTime(today);
		  flightDataVO.setArrPlandTime(today+" 23:59:59");
		  
		  List<FlightDataVO> sdlist = adminService.saleterm(flightDataVO);
		  
		  
		
		mv.addObject("smlist", smlist.get(0));
		mv.addObject("sw1list", sw1list.get(0));
		mv.addObject("sw2list", sw2list.get(0));
		mv.addObject("sw3list", sw3list.get(0));
		mv.addObject("sw4list", sw4list.get(0));
		mv.addObject("sw5list", sw5list.get(0));
		mv.addObject("sdlist", sdlist.get(0));
		
		
		List<AirlineVO> airlineVOs = adminService.airlineList();
		mv.addObject("alist", airlineVOs);
		
		mv.setViewName("admin/common/admin1_1_layout");
		
		return mv;
	}
	
	
	@GetMapping("admin1_2")
	public void admin1_2(Model model) throws Exception{
		List<AirportVO> airlineVOs = adminService.airportList();
		model.addAttribute("alist", airlineVOs);
		
		FlightDataVO flightDataVO = new FlightDataVO();
		
		if(flightDataVO.getAirlineNm() == null) {
			flightDataVO.setAirlineNm("");
		}
		
		  SimpleDateFormat format1 = new SimpleDateFormat ("yyyy-MM-dd");
		  Date time = new Date(); 
		  String today = format1.format(time); //오늘 날짜
		 		

		  //월 
		  //2020-02-01 ~ 2020-02-29
		  flightDataVO.setDepPlandTime("2020-02-01");
		  flightDataVO.setArrPlandTime("2020-02-29 23:59:59");
		  
		  List<FlightDataVO> smlist = adminService.saletermAir(flightDataVO);
		  
		  //주 
		  //2020-01-26 ~ 2020-02-01
		  flightDataVO.setDepPlandTime("2020-02-11");
		  flightDataVO.setArrPlandTime("2020-02-17 23:59:59");
		  
		  List<FlightDataVO> swlist = adminService.saletermAir(flightDataVO);
		  
		/*
		 * //2020-02-02 ~ 2020-02-08 flightDataVO.setDepPlandTime("2020-02-02");
		 * flightDataVO.setArrPlandTime("2020-02-08");
		 * 
		 * List<FlightDataVO> sw2list = adminService.saleterm(flightDataVO);
		 * 
		 * //2020-02-09 ~ 2020-02-15 flightDataVO.setDepPlandTime("2020-02-09");
		 * flightDataVO.setArrPlandTime("2020-02-15");
		 * 
		 * List<FlightDataVO> sw3list = adminService.saleterm(flightDataVO);
		 * 
		 * //2020-02-16 ~ 2020-02-22 flightDataVO.setDepPlandTime("2020-02-16");
		 * flightDataVO.setArrPlandTime("2020-02-22");
		 * 
		 * List<FlightDataVO> sw4list = adminService.saleterm(flightDataVO);
		 * 
		 * //2020-02-23 ~ 2020-02-29 flightDataVO.setDepPlandTime("2020-02-23");
		 * flightDataVO.setArrPlandTime("2020-02-29");
		 * 
		 * List<FlightDataVO> sw5list = adminService.saleterm(flightDataVO);
		 */

		  
		  //일 오늘 2020-02-01 ~ 2020-02-01 23:59:59
		  flightDataVO.setDepPlandTime(today);
		  flightDataVO.setArrPlandTime(today+" 23:59:59");
		  
		  List<FlightDataVO> sdlist = adminService.saletermAir(flightDataVO);
		  
		  
		  model.addAttribute("smlist", smlist);
		  model.addAttribute("swlist", swlist);
		/*
		 * model.addAttribute("sw2list", sw2list); model.addAttribute("sw3list",
		 * sw3list); model.addAttribute("sw4list", sw4list);
		 * model.addAttribute("sw5list", sw5list);
		 */
		  model.addAttribute("sdlist", sdlist);
		
	}
	
	@GetMapping("admin1_2_layout")
	public ModelAndView admin1_2_layout(FlightDataVO flightDataVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		//depPlandTime : 산출 시작일 2020-00-00
		//arrPlandTime : 산출 마감일 2020-00-00
		//airlineNm : 항공사 이름 ajax로 받아오기 -> 전체 받으려면 ''로 만들어줘야 한다. null은 안됨
	
		
		  SimpleDateFormat format1 = new SimpleDateFormat ("yyyy-MM-dd");
		  Date time = new Date(); 
		  String today = format1.format(time); //오늘 날짜
		 		

		  //월 
		  //2020-02-01 ~ 2020-02-29
		  flightDataVO.setDepPlandTime("2020-02-01");
		  flightDataVO.setArrPlandTime("2020-02-29 23:59:59");
		  
		  List<FlightDataVO> smlist = adminService.saleterm(flightDataVO);
		  
		  //주 
		  //2020-01-26 ~ 2020-02-01
		  flightDataVO.setDepPlandTime("2020-01-26");
		  flightDataVO.setArrPlandTime("2020-02-01 23:59:59");
		  
		  List<FlightDataVO> sw1list = adminService.saleterm(flightDataVO);
		  
		  //2020-02-02 ~ 2020-02-08
		  flightDataVO.setDepPlandTime("2020-02-02");
		  flightDataVO.setArrPlandTime("2020-02-08 23:59:59");
		  
		  List<FlightDataVO> sw2list = adminService.saleterm(flightDataVO);
		  
		  //2020-02-09 ~ 2020-02-15
		  flightDataVO.setDepPlandTime("2020-02-09");
		  flightDataVO.setArrPlandTime("2020-02-15 23:59:59");
		  
		  List<FlightDataVO> sw3list = adminService.saleterm(flightDataVO);
		  
		  //2020-02-16 ~ 2020-02-22
		  flightDataVO.setDepPlandTime("2020-02-16");
		  flightDataVO.setArrPlandTime("2020-02-22 23:59:59");
		  
		  List<FlightDataVO> sw4list = adminService.saleterm(flightDataVO);
		  
		  //2020-02-23 ~ 2020-02-29
		  flightDataVO.setDepPlandTime("2020-02-23");
		  flightDataVO.setArrPlandTime("2020-02-29 23:59:59");
		  
		  List<FlightDataVO> sw5list = adminService.saleterm(flightDataVO);

		  
		  //일 오늘 2020-02-01 ~ 2020-02-01 23:59:59
		  flightDataVO.setDepPlandTime(today);
		  flightDataVO.setArrPlandTime(today+" 23:59:59");
		  
		  List<FlightDataVO> sdlist = adminService.saleterm(flightDataVO);
		  
		  
		
		mv.addObject("smlist", smlist.get(0));
		mv.addObject("sw1list", sw1list.get(0));
		mv.addObject("sw2list", sw2list.get(0));
		mv.addObject("sw3list", sw3list.get(0));
		mv.addObject("sw4list", sw4list.get(0));
		mv.addObject("sw5list", sw5list.get(0));
		mv.addObject("sdlist", sdlist.get(0));
		
		
		List<AirlineVO> airlineVOs = adminService.airlineList();
		mv.addObject("alist", airlineVOs);
		
		mv.setViewName("admin/common/admin1_1_layout");
		
		return mv;
	}
	
	
	
	
	
	@GetMapping("admin1_3")
	public void admin1_3() throws Exception{
		
	}
	
	@GetMapping("admin2_1")
	public void admin2_1(Model model) throws Exception{
		List<AirlineVO> airlineVOs = adminService.airlineList();
		model.addAttribute("alist", airlineVOs);
		
		List<FlightDataVO> flist = adminService.airallList();
		model.addAttribute("flist", flist);
		
	}
	
	@GetMapping("admin2_1_layout")
	public ModelAndView admin2_1_layout(FlightDataVO flightDataVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<FlightDataVO> flist = adminService.airpartList(flightDataVO);
		mv.addObject("flist", flist);
		
		List<AirlineVO> airlineVOs = adminService.airlineList();
		mv.addObject("alist", airlineVOs);
		
		mv.setViewName("admin/common/admin2_1_layout");
		
		return mv;
	}
	
	
	@GetMapping("admin2_2")
	public void admin2_2() throws Exception{
		
	}
	
	@GetMapping("admin3_1")
	public ModelAndView admin3_1() throws Exception{
		ModelAndView mv = new ModelAndView();
		List<ETicketVO> eTicketVOs = adminService.getBookingInfo();
		for(int i = 0; i < eTicketVOs.size(); i++) {
			if (eTicketVOs.get(i).getFlightBNum() == null)
				eTicketVOs.get(i).setFlightBNum("X");
		}
		mv.addObject("books",eTicketVOs);
		return mv;
	}
	
	@GetMapping("admin4_1")
	public void admin4_1(Model model) throws Exception{
		List<NoticeVO> ar = noticeService.adminNoticeList();	
		model.addAttribute("board", "notice");
		model.addAttribute("list", ar);
	}
	
	@GetMapping("admin5_1")
	public void admin5_1(Model model) throws Exception{
		//전체 주차장 정보
		List<ParkInfoVO> ar = parkService.apiTest();
		model.addAttribute("list", ar);
	}
	
	@GetMapping("admin5_2")
	public void admin5_2(Model model) throws Exception{
		DateFormat df = new SimpleDateFormat("yyyy-MM");
		Calendar cal = Calendar.getInstance();
		String tm = df.format(cal.getTime());
		cal.add(cal.MONTH, -1);
		String pm = df.format(cal.getTime());
		
		List<pReservationVO> last = parkService.lastMonthEarn(pm);
		List<pReservationVO> thism = parkService.thisMonthEarn(tm);
		List<pReservationVO> today = parkService.today();
		List<pInfoVO> pInfo = parkService.parkInfo();
		List<pReservationVO> out = parkService.parkOut();
		List<pReservationVO> in = parkService.parkIn();
		for (int i = 0; i < today.size(); i++) {
			int son = today.get(i).getAreaNum();
			int mom = pInfo.get(i).getTotal();
			int per = son*100/mom;
			pInfo.get(i).setMargin(per);
		}
		
		model.addAttribute("pInfo", pInfo);
		model.addAttribute("lastmonth", pm);
		model.addAttribute("thismonth", tm);
		model.addAttribute("today", today);
		model.addAttribute("last", last);
		model.addAttribute("thism", thism);
		model.addAttribute("out", out);
		model.addAttribute("in", in);
		
	}

	@GetMapping("admin6_1")
	public void admin6_1() throws Exception{
	
	}
	
	@GetMapping("admin6_2")
	public void admin6_2() throws Exception{
		
	}
	
	@GetMapping("admin7_1")
	public void admin7_1(Model model) throws Exception{
		List<MembersVO> ar = adminService.getMemberList();
		for (MembersVO members : ar) {
			if (members.getPhone().length() ==11) {
				members.setPhone(members.getPhone().substring(0, 3)+"-"+members.getPhone().substring(3, 7)+"-"+members.getPhone().substring(7, 11));
			}else {
				members.setPhone(members.getPhone().substring(0, 3)+"-"+members.getPhone().substring(3, 6)+"-"+members.getPhone().substring(6, 10));
			}
		}
		model.addAttribute("list", ar);
	}

}

