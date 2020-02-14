package com.airline.a1.pay;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping("/pay/**")
public class PayController {
	@Autowired
	private PayService payService;
	//@Inject
	//private StoreService storeService;
	
/*	@GetMapping(value = "marketPaySuccess")
	public ModelAndView marketPayGet(HttpServletRequest request) throws Exception {
		
		PayInfoVO payInfoVO = new PayInfoVO();
		String pg_token = request.getParameter("pg_token");
		ModelAndView mv = new ModelAndView();
		payInfoVO = payService.KakaoPayApprove(pg_token);
		mv.addObject("pay", payInfoVO);
		
		////////////
		MyOrderVO myOrderVO = new MyOrderVO();
		MemberVO memberVO = (MemberVO)request.getSession().getAttribute("member");
		
		myOrderVO.setMemberId(memberVO.getId());
		myOrderVO.setTotalAmount(payInfoVO.getAmount().getTotal());
		
		storeService.orderInsert(myOrderVO);
		
		return mv;
	}*/
	


	
	@GetMapping(value = "kakaoPay")
	public void KakaoPayGet() throws Exception {

	}

	@PostMapping(value = "kakaoPay")
	public String KakaoPayPost(String total_amount, String quantity) throws Exception {
		total_amount = "10000";
		quantity = "1";
		
		System.out.println(total_amount);
		System.out.println(quantity);
		return "redirect:" + payService.KakaoPayReady(total_amount, quantity);
	}

	@GetMapping("/kakaoPaySuccess")
	public ModelAndView kakaoPaySuccess(HttpServletRequest request, HttpSession session) throws Exception {
		String bookCode = (String) session.getAttribute("allBookCode");
		String pg_token = request.getParameter("pg_token");
		String adultCount = "1";
		String kidCount = "1";

		PayInfoVO payInfoVO = new PayInfoVO();
		ModelAndView mv = new ModelAndView();
		payInfoVO = payService.KakaoPayApprove(pg_token);

		mv.addObject("bookCode", bookCode);
		mv.addObject("adultCount", adultCount);
		mv.addObject("kidCount", kidCount);
		mv.addObject("pay", payInfoVO);
		return mv;
	}

}