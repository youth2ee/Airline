package com.airline.a1.mypage;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.airline.a1.checkIn.ETicketVO;
import com.airline.a1.checkIn.SeatVO;
import com.airline.a1.member.MembersVO;
import com.airline.a1.park.ParkService;
import com.airline.a1.park.pReservationVO;

import com.airline.a1.member.MembersVO;
import com.airline.a1.park.ParkService;
import com.airline.a1.park.pInfoVO;
import com.airline.a1.park.pReservationVO;

@Controller
@RequestMapping("mypage/**")
public class MypageController {
	
	@Autowired
	private ParkService parkService;
	@Autowired
	private MypageService mypageService;
	
	@GetMapping("main")
	public void main() {}
	
	@GetMapping("memberUpdate")
	public void memberUpdate() {}
	
	@GetMapping("mileage")
	public void mileage() {}
	
	@GetMapping("ticketCancel")
	public ModelAndView bookCancel(String bnum) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = mypageService.bookCancel(bnum);
		String msg = "예매 취소에 실패했습니다.";
		String path = "./ticketCheck";
		if(result > 0)
			msg = "예매가 취소되었습니다.";
		mv.addObject("msg", msg);
		mv.addObject("path", path);
		mv.setViewName("common/common_result");
		return mv;
	}
	@GetMapping("bookingMore")
	public ModelAndView bookingMore(String bookingNum) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println(bookingNum);
		ETicketVO eTicketVO = new ETicketVO();
		eTicketVO.setBookingNum(bookingNum);
		List<ETicketVO> eTicketVOs = mypageService.getBookingMore(eTicketVO);
		List<SeatVO> seatVOs = mypageService.getBookingMoreSeat(eTicketVO);
		String str = eTicketVOs.get(0).getDepPlandTime().substring(0,4) +"-"+eTicketVOs.get(0).getDepPlandTime().substring(4,6) + "-"
				+eTicketVOs.get(0).getDepPlandTime().substring(6,8) ;
		System.out.println(str);
		System.out.println(eTicketVOs.get(0).getDepPlandTime());
		System.out.println(eTicketVOs.get(0).getArrPlandTime());
		System.out.println(eTicketVOs.get(0).getDepAirportNm());
		System.out.println(eTicketVOs.get(0).getArrAirportNm());
		System.out.println(eTicketVOs.get(0).getVihicleId());
		System.out.println(eTicketVOs.get(0).getTotalPrice());
		System.out.println(eTicketVOs.get(0).getFlightBNum());
		System.out.println(eTicketVOs.get(0).getName());
		System.out.println(eTicketVOs.get(0).getKind());
		mv.addObject("bookingMore",eTicketVOs);
		mv.addObject("seats",seatVOs);
		mv.addObject("isCheckIn",seatVOs.size());
		mv.addObject("count", eTicketVOs.size());
		return mv;
		
	}
	
	@GetMapping("ticketCheck")
	public ModelAndView ticketCheck(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		ETicketVO eTicketVO = new ETicketVO();
		MembersVO member = (MembersVO)session.getAttribute("member");
		/* eTicketVO.setId(member.getId()); */
		eTicketVO.setId("test");
		List<ETicketVO> eTicketVOs = mypageService.getBookingList(eTicketVO);
		mv.addObject("bookList",eTicketVOs);
		return mv;
	}
	
	@GetMapping("park")
	public void park(HttpSession session, pReservationVO pReservationVO,Model model) throws Exception {
		
		if(pReservationVO.getStartDate() == null) {
			Long today = System.currentTimeMillis();
			Long todaypast = today - 1296000000;
			Long todayafter = today + 1296000000;
			
			Date past = new Date(todaypast);
			Date after = new Date(todayafter);
			pReservationVO.setStartDate(past);
			pReservationVO.setEndDate(after);
		}
		MembersVO membersVO = (MembersVO)session.getAttribute("member");
		pReservationVO.setId(membersVO.getId());
		List<pReservationVO> ar = parkService.myReservation(pReservationVO);
		model.addAttribute("list", ar);
		model.addAttribute("VO", pReservationVO);
		
	}
	@GetMapping("parkSelect")
	public void parkSelect(pReservationVO pReservationVO, Model model) throws Exception {
		
		pReservationVO = parkService.resSelect(pReservationVO);
		pInfoVO pInfoVO = new pInfoVO();
		pInfoVO.setaName(pReservationVO.getAirport());
		pInfoVO = parkService.parkWhere(pInfoVO);
		model.addAttribute("VO", pReservationVO);
		model.addAttribute("park", pInfoVO);
		List<Integer> etc = new ArrayList<Integer>();
		if(pInfoVO.getEtc() !=null) {
			for (int i = 0; i < pInfoVO.getEtc().split(",").length; i++) {
				etc.add(Integer.parseInt(pInfoVO.getEtc().split(",")[i]));
			}
		}
		model.addAttribute("etc", etc);
		
	}
	
	@GetMapping("limo")
	public void limo() {}
	
	
	@GetMapping("test")
	public void test () {}
	
	@GetMapping("chart")
	public void chart() {}
	
}
