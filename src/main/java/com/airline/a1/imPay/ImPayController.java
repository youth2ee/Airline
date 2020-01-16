package com.airline.a1.imPay;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.airline.a1.member.MembersVO;

@Controller
@RequestMapping("/imPay/**")
public class ImPayController {

	
	@RequestMapping("imPayList")
	public Model imPayList(ImPayVO imPayVO, Model model) {
		
		System.out.println(imPayVO.getName());
		System.out.println(imPayVO.getAmount());
		
		MembersVO membersVO = new MembersVO();
		membersVO.setName("이가영");
		membersVO.setEmail("sprirealee@gmail.com");
		membersVO.setPhone("010-1111-1111");
		imPayVO.setMembersVO(membersVO);
		
		model.addAttribute("VO", imPayVO);
		
		return model;
	}
	
	
	@RequestMapping("imPayComplete")
	public void imPayComplete(ImPayResultVO imPayResultVO) {
		System.out.println(imPayResultVO.getSuccess());
		System.out.println(imPayResultVO.getImp_uid());
		System.out.println(imPayResultVO.getMerchant_uid());
		System.out.println(imPayResultVO.getPay_method());
		System.out.println(imPayResultVO.getPaid_amount());
		System.out.println(imPayResultVO.getStatus());
		System.out.println(imPayResultVO.getName());
		System.out.println(imPayResultVO.getPg_provider());
		System.out.println(imPayResultVO.getPg_tid());
		System.out.println(imPayResultVO.getPaid_at());
		System.out.println(imPayResultVO.getReceipt_url());
		System.out.println(imPayResultVO.getApply_num());

	}
	
}
