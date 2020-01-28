package com.airline.a1.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("mypage/**")
public class MypageController {

	@GetMapping("main")
	public void main() {}
	
	@GetMapping("memberUpdate")
	public void memberUpdate() {}
	
	@GetMapping("mileage")
	public void mileage() {}
	
	@GetMapping("ticketCheck")
	public void ticketCheck() {}
	
	@GetMapping("park")
	public void park() {}
	
	@GetMapping("limo")
	public void limo() {}
	
	
	@GetMapping("test")
	public void test () {}
	
	@GetMapping("chart")
	public void chart() {}
	
}
