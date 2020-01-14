package com.airline.a1.imPay;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/imPay/**")
public class ImPayController {

	
	@RequestMapping("imPayList")
	public void imPayList(ImPayVO imPayVO) {

		
	}
	
	
	@RequestMapping("imPayComplete")
	public void imPayComplete() {
		
	}
	
}
