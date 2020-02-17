package com.airline.a1.imPay;

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
	public Model imPayList(ImPayVO imPayVO, HttpSession session ,Model model) {
		
		System.out.println("1");
		System.out.println(imPayVO.getRamount());
		System.out.println(imPayVO.getMilplus());
		System.out.println(imPayVO.getBnum());

		
		MembersVO membersVO = (MembersVO)session.getAttribute("member");
		imPayVO.setMembersVO(membersVO);
		
	
		model.addAttribute("VO", imPayVO);
		
		return model;
	}
	
	
	@RequestMapping("imPayComplete")
	public void imPayComplete(ImPayResultVO imPayResultVO, Model model, HttpSession session) throws Exception {
		
		System.out.println("2");
		System.out.println(imPayResultVO.getBpnum());
		System.out.println(imPayResultVO.getMil());
		System.out.println(imPayResultVO.getPaid_amount());
		System.out.println(imPayResultVO.getImp_uid()); //id
		System.out.println(imPayResultVO.getMerchant_uid()); //milplus
		System.out.println(imPayResultVO.getBnum());
		
		String [] nlist = imPayResultVO.getBpnum().split(","); 
		
		BookingPriceVO bookingPriceVO = new BookingPriceVO();
		bookingPriceVO.setMileageMin(imPayResultVO.getMil());
		bookingPriceVO.setMileagePlus(Integer.parseInt(imPayResultVO.getMerchant_uid()));
		bookingPriceVO.setTotalAllPrice(imPayResultVO.getPaid_amount());
		
		System.out.println("빠질 마일리지 1");
		System.out.println(bookingPriceVO.getMileageMin());
		
		System.out.println("더할 마일리지 1");
		System.out.println(bookingPriceVO.getMileagePlus());
		
		
		
		for (int i = 1; i < nlist.length; i++) {
			Integer bpnum = Integer.parseInt(nlist[i]);
			
			bookingPriceVO.setBpnum(bpnum);
			
			System.out.println("빠지는 마일리지 게시판에 등록");
			System.out.println(bookingPriceVO.getMileageMin());
			
			bookingService.priceInsertResult(bookingPriceVO);	
			memberService.updateMilplus(bookingPriceVO);
		}
		
		MembersVO memVo2 =  (MembersVO)session.getAttribute("member");
		memVo2 = memberService.memberLogin(memVo2);
		System.out.println("인서트된 후 마일리지");
		System.out.println(memVo2.getMileage());
		
		
		MembersVO membersVO = new MembersVO();
		membersVO.setId(imPayResultVO.getImp_uid());
		membersVO.setMileage(bookingPriceVO.getMileageMin());
		
		System.out.println("빠질 마일리지");
		System.out.println(membersVO.getMileage());
		
		memberService.updateMilmin(membersVO);
		
		MembersVO memVo =  (MembersVO)session.getAttribute("member");
		memVo = memberService.memberLogin(memVo);
		
		System.out.println("결과적 마일리지");
		System.out.println(memVo.getMileage());
		
		System.out.println();
		
		session.setAttribute("member", memVo);
		
		model.addAttribute("vo", imPayResultVO);
	}
	
}
