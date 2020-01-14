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
	@ResponseBody
	public Model imPayList(ImPayVO imPayVO, Model model) {
		imPayVO.setName("test결제");
		imPayVO.setAmount(100);
		MembersVO membersVO = new MembersVO();
		membersVO.setName("이가영");
		membersVO.setEmail("sprirealee@gmail.com");
		membersVO.setPhone("010-1111-1111");
		imPayVO.setMembersVO(membersVO);
		
		model.addAttribute("VO", imPayVO);
		
		
		return model;
	}
	
	
	@RequestMapping("imPayComplete")
	public void imPayComplete() {
		
	}
	
}
