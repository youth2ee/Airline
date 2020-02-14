package com.airline.a1.park;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("park/**")
public class ParkController {
	
	@Autowired
	private ParkService parkService;
	
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
	
	@GetMapping("FindMyRes")
	public String FindMyRes(HttpSession session) throws Exception{
		String path = "";
		if(session.getAttribute("member") != null) {
			path = "redirect:../mypage/park";
		}else {
			path = "park/FindMyRes";
		}
		return path;
	}
	
	@GetMapping("MyRes")
	public void MyRes() throws Exception{
		
	}
	
	@PostMapping("FindMyRes")
	public ModelAndView resveForm(pReservationVO pReservationVO, String kind, HttpSession session) throws Exception{
		List<pReservationVO> ar = new ArrayList<>();
		ModelAndView mv = new ModelAndView();
		
			if(kind.equals("acPlate")) {
				//차량번호
				ar = parkService.FindMyResByCarNum(pReservationVO);
			}else {
				//전화번호
				ar = parkService.FindMyResByPhone(pReservationVO);
			}
			
			if(ar.size() >0) {
				mv.addObject("list", ar);
				session.setAttribute("list", ar);
				mv.setViewName("park/MyRes");
			}else {
				mv.setViewName("common/common_result");
				mv.addObject("msg", "조회 결과가 없습니다.");
				mv.addObject("path", "./FindMyRes");
			}

	
		return mv;
		
	}
	
	@GetMapping("parkCancel")
	public ModelAndView parkCancel(pReservationVO pReservationVO, HttpSession session,HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		if(request.getHeader("Referer") != null) {
			
			if(session.getAttribute("member") != null) {
				
				Integer result = parkService.parkCancel(pReservationVO);
				if(result >0) {
					mv.addObject("msg", "예약이 취소됐습니다.");
					mv.addObject("path", "../mypage/park");
					mv.setViewName("common/common_result");
				}else {
					mv.addObject("msg", "다시 시도해주세요.");
					mv.addObject("path", "../mapage/park");
					mv.setViewName("common/common_result");
				}
				
			}else {
				pReservationVO = parkService.resSelect(pReservationVO);
				mv.addObject("VO", pReservationVO);
				mv.setViewName("park/parkCancel");
			}
			
		}else {
			mv.addObject("msg", "올바른 접근이 아닙니다.");
			mv.addObject("path", "FindMyRes");
			mv.setViewName("common/common_result");
		}
		
		
		return mv;
	}
	
	@PostMapping("parkCancel")
	public ModelAndView parkCancel(pReservationVO pReservationVO, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView();
		if(request.getHeader("Referer") != null) {
		
			int result = parkService.parkCancel2(pReservationVO);
			if(result > 0 ) {
				mv.addObject("msg", "예약을 취소했습니다.");
				mv.addObject("path", "MyRes");
			}else {
				mv.addObject("msg", "다시 시도해주세요.");
				mv.addObject("path", "MyRes");
			}
			
		}else {
			mv.addObject("msg", "올바른 접근이 아닙니다.");
			mv.addObject("path", "park/MyRes");
		}
		mv.setViewName("common/common_result");
		return mv;
	}
	
/*	@GetMapping("parkCancel2")
	public ModelAndView parkCancel2(pReservationVO pReservationVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		Integer result = parkService.parkCancel(pReservationVO);
		if(result >0) {
			mv.addObject("msg", "예약이 취소됐습니다.");
			mv.addObject("path", "park/ParkRes");
			mv.setViewName("common/common_result");
		}else {
			mv.addObject("msg", "다시 시도해주세요.");
			mv.addObject("path", "park/MyRes");
			mv.setViewName("common/common_result");
		}
		
		return mv;
	}*/
	
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
	public void ParkRes(String arrLoc) throws Exception{
		
		
	}
	
	@GetMapping("parkCheck")
	public ModelAndView parkCheck(ModelAndView mv, pReservationVO pReservationVO, HttpServletRequest request) throws Exception{
		
		if(request.getHeader("Referer") == null) {
			mv.setViewName("common/common_result");
			mv.addObject("msg", "예약 정보를 입력해주세요.");
			mv.addObject("path", "./ParkRes");
		}else {
			
			int sDate = Integer.parseInt(pReservationVO.getStartDate().toString().replace("-", "").substring(0,6));
			int eDate = Integer.parseInt(pReservationVO.getEndDate().toString().replace("-", "").substring(0,6));
			
			List<String> rest = new ArrayList<>();
			for (int i = sDate; i <= eDate; i++) {
				if(i%100 == 13) {
					i = i + 88;			
				}
				int year = Math.floorDiv(i, 100);
				int month = i - year*100;
				parkService.apiRest(year,month, rest);
			}
			List<pReservationVO> ar = parkService.parkCheck(pReservationVO);
			pInfoVO pInfoVO = new pInfoVO();
			pInfoVO.setaName(pReservationVO.getAirport());
			pInfoVO =parkService.parkWhere(pInfoVO);
			List<Integer> etc = new ArrayList<Integer>();
			
			if(pInfoVO.getEtc() !=null) {
				for (int i = 0; i < pInfoVO.getEtc().split(",").length; i++) {
					etc.add(Integer.parseInt(pInfoVO.getEtc().split(",")[i]));
				}
			}
			mv.addObject("etc", etc);
			mv.addObject("list", ar);
			mv.addObject("park", pInfoVO);
			mv.addObject("rest", rest);
			mv.setViewName("park/parkCheck");
		}
		
		return mv;
	}
	
	@PostMapping("resInsert")
	public ModelAndView resInsert(ModelAndView mv, pReservationVO pReservationVO, HttpServletRequest request) throws Exception{
		
		
		
		if(parkService.parkfinalcheck(pReservationVO).isEmpty()) {
			
			if(pReservationVO.getId().equals("")) {
				pReservationVO.setId(null);
			}else {
				pReservationVO.setPassword(null);
			}
			int result = parkService.resInsert(pReservationVO);
			 
			if(result > 0) {
				mv.addObject("info", pReservationVO);
				mv.setViewName("park/resResult");
			}else {
				mv.addObject("msg", "예약에 실패하였습니다. 다시 진행해주세요");
				mv.setViewName("common/common_result");
				mv.addObject("path", "./ParkRes");
			}
		}else {
			System.out.println(request.getAttribute("Referer"));
			mv.addObject("msg", "예약에 실패하였습니다. 다시 진행해주세요");
			mv.addObject("path", "./ParkRes");
			mv.setViewName("common/common_result");
		}
		
		
		
		return mv;
	}
	
}
