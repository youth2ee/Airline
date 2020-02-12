package com.airline.a1.admin;

import org.springframework.context.annotation.Conditional;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/**")
public class adminController {
	
	@GetMapping
	public void main() throws Exception{
		
	}
}
