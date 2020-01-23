package com.airline.a1.cart;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cart/**")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	public String insert(@ModelAttribute CartVO cartVO, HttpSession session) {
		
		String id = (String)session.getAttribute("id");
		if(id==null) {
			
			return "redirect:/member/memberLogin";
			
		}
	cartVO.setId(id);
	cartService.insert(cartVO);
	
	return "redirect:/cart/cartList";
			
	}
}
