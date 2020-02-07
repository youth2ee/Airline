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

import com.airline.a1.member.MembersVO;
import com.airline.a1.park.ParkService;
import com.airline.a1.park.pInfoVO;
import com.airline.a1.park.pReservationVO;

@Controller
@RequestMapping("mypage/**")
public class MypageController {
	
	@Autowired
	private ParkService parkService;
	
	@GetMapping("main")
	public void main() {}
	
	@GetMapping("memberUpdate")
	public void memberUpdate() {}
	
	@GetMapping("mileage")
	public void mileage() {}
	
	@GetMapping("ticketCheck")
	public void ticketCheck() {}
	
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
