package com.airline.a1.imPay;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.airline.a1.booking.BookingPriceVO;
import com.airline.a1.booking.BookingService;
import com.airline.a1.limo.LimoVO;
import com.airline.a1.member.MemberService;
import com.airline.a1.member.MembersVO;

@Controller
@RequestMapping("/imPay/**")
public class ImPayController {
	
	@Autowired
	private BookingService bookingService;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("imPayComplete2")
	public void imPayComplete2(Model model, LimoVO limoVO) {

		model.addAttribute("vo", limoVO);
	}

	@RequestMapping("imPayList2")
	public Model imPayList2(ImPayVO imPayVO, HttpSession session, Model model) {


		MembersVO membersVO = (MembersVO)session.getAttribute("member");
		imPayVO.setMembersVO(membersVO);

		model.addAttribute("VO", imPayVO);

		return model;
	}

	
	@RequestMapping("imPayList")
	public ModelAndView imPayList(ImPayVO imPayVO, HttpSession session, Model model, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		if(request.getHeader("Referer") != null) {
		MembersVO membersVO = (MembersVO)session.getAttribute("member");
		imPayVO.setMembersVO(membersVO);
	
		mv.addObject("VO", imPayVO);
		mv.setViewName("imPay/imPayList");
		} else {
			mv.addObject("msg", "올바른 접근이 아닙니다.");
			mv.addObject("path", "../");
			mv.setViewName("common/common_result");
		}
		
		return mv;
	}
	
	
	@RequestMapping("imPayComplete")
	public ModelAndView imPayComplete(ImPayResultVO imPayResultVO, HttpSession session,  HttpServletRequest request) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
		if(request.getHeader("Referer") != null) {
		
		String [] nlist = imPayResultVO.getBpnum().split(","); 
		
		BookingPriceVO bookingPriceVO = new BookingPriceVO();
		bookingPriceVO.setMileageMin(imPayResultVO.getMil());
		bookingPriceVO.setMileagePlus(Integer.parseInt(imPayResultVO.getMerchant_uid()));
		bookingPriceVO.setTotalAllPrice(imPayResultVO.getPaid_amount());
		
		for (int i = 1; i < nlist.length; i++) {
			Integer bpnum = Integer.parseInt(nlist[i]);
			
			bookingPriceVO.setBpnum(bpnum);
			
			bookingService.priceInsertResult(bookingPriceVO);	
			memberService.updateMilplus(bookingPriceVO);
		}
		
		MembersVO memVo2 =  (MembersVO)session.getAttribute("member");
		memVo2 = memberService.memberLogin(memVo2);
		
		MembersVO membersVO = new MembersVO();
		membersVO.setId(imPayResultVO.getImp_uid());
		membersVO.setMileage(bookingPriceVO.getMileageMin());
		
		memberService.updateMilmin(membersVO);
		
		MembersVO memVo =  (MembersVO)session.getAttribute("member");
		memVo = memberService.memberLogin(memVo);
		
		session.setAttribute("member", memVo);
		mv.addObject("vo", imPayResultVO);
		mv.setViewName("imPay/imPayComplete");
		
		} else {
			mv.addObject("msg", "올바른 접근이 아닙니다.");
			mv.addObject("path", "../");
			mv.setViewName("common/common_result");
		}
		
		return mv;
	}
	
}
