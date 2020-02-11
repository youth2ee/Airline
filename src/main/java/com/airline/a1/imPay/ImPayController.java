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
import com.airline.a1.member.MemberService;
import com.airline.a1.member.MembersVO;

@Controller
@RequestMapping("/imPay/**")
public class ImPayController {
	
	@Autowired
	private BookingService bookingService;
	
	@Autowired
	private MemberService memberService;

	
	@RequestMapping("imPayList")
	public Model imPayList(ImPayVO imPayVO, HttpSession session ,Model model) {
		
		System.out.println("1");
		System.out.println(imPayVO.getRamount());
		System.out.println(imPayVO.getMilplus());
		
		/*
		 * System.out.println(imPayVO.getMil()); System.out.println(imPayVO.getBpnum());
		 */
		
		/* String [] nlist = imPayVO.getBpnum().split(","); */
		
		/*
		 * int bpnum = 0;
		 * 
		 * for(String list : nlist) { list = list.trim(); bpnum =
		 * Integer.parseInt(list);
		 * 
		 * }
		 */
		
		/*
		 * System.out.println(imPayVO.getName());
		 * System.out.println(imPayVO.getAmount());
		 */
		
		MembersVO membersVO = (MembersVO)session.getAttribute("member");
		imPayVO.setMembersVO(membersVO);
		
	
		model.addAttribute("VO", imPayVO);
		
		return model;
	}
	
	
	@RequestMapping("imPayComplete")
	public void imPayComplete(ImPayResultVO imPayResultVO, Model model) throws Exception {
		
		System.out.println("2");
		System.out.println(imPayResultVO.getBpnum());
		System.out.println(imPayResultVO.getMil());
		System.out.println(imPayResultVO.getPaid_amount());
		System.out.println(imPayResultVO.getMilplus());
		System.out.println(imPayResultVO.getImp_uid());
		System.out.println(imPayResultVO.getMerchant_uid());
		
		String [] nlist = imPayResultVO.getBpnum().split(","); 
		
		BookingPriceVO bookingPriceVO = new BookingPriceVO();
		bookingPriceVO.setMileageMin(imPayResultVO.getMil());
		bookingPriceVO.setTotalAllPrice(imPayResultVO.getPaid_amount());
		
		for (int i = 1; i < nlist.length; i++) {
			Integer bpnum = Integer.parseInt(nlist[i]);
			
			System.out.println(bpnum);
			bookingPriceVO.setBpnum(bpnum);
			
			bookingService.priceInsertResult(bookingPriceVO);	
			
			memberService.updateMilplus(bookingPriceVO);
		}
		
		
		MembersVO membersVO = new MembersVO();
		membersVO.setId(imPayResultVO.getImp_uid());
		membersVO.setMileage(Integer.parseInt(imPayResultVO.getMerchant_uid()));
		
		memberService.updateMilmin(membersVO);
	
		
		model.addAttribute("vo", imPayResultVO);
	}
	
}
