package com.airline.a1.admin;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

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
	public void admin1_1() throws Exception{
		
	}
	
	@GetMapping("admin1_2")
	public void admin1_2() throws Exception{
		
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
		List<FlightDataVO> flist = adminService.airpartList(flightDataVO);
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("flist", flist);
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
	public void admin7_1() throws Exception{
		
	}

}

