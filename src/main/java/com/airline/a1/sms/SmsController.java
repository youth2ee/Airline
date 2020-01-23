package com.airline.a1.sms;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("sms/**")
@Controller
public class SmsController {
	
	@Autowired
	private SmsService smsService;
	
	
	@RequestMapping("smsSend")
	public void smsSend() throws Exception{
		System.out.println("c");
		//smsService.smsSend("무엇");
	}
	
}
