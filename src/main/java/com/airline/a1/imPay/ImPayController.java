package com.airline.a1.imPay;

import javax.servlet.http.HttpSession;

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
	public Model imPayList(ImPayVO imPayVO, HttpSession session ,Model model) {
		
		System.out.println(imPayVO.getMil());
		System.out.println(imPayVO.getBpnum());
		
		String [] nlist = imPayVO.getBpnum().split(",");
		
		int bpnum = 0; 
		
		for(String list : nlist) {
			list = list.trim();
			bpnum =  Integer.parseInt(list);
			
			
			
			
		}
		
		
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
	public void imPayComplete(ImPayResultVO imPayResultVO, Model model) {
		
		System.out.println(imPayResultVO.getMil());
		
		/*
		 * System.out.println(imPayResultVO.getSuccess());
		 * System.out.println(imPayResultVO.getImp_uid());
		 * System.out.println(imPayResultVO.getMerchant_uid());
		 * System.out.println(imPayResultVO.getPay_method());
		 * System.out.println(imPayResultVO.getPaid_amount());
		 * System.out.println(imPayResultVO.getStatus());
		 * System.out.println(imPayResultVO.getName());
		 * System.out.println(imPayResultVO.getPg_provider());
		 * System.out.println(imPayResultVO.getPg_tid());
		 * System.out.println(imPayResultVO.getPaid_at());
		 * System.out.println(imPayResultVO.getReceipt_url());
		 * System.out.println(imPayResultVO.getApply_num());
		 */
		
		
		//member에서 마일리지 적립은 여기서 해결
		
		
		
		model.addAttribute("vo", imPayResultVO);
	}
	
}
