package com.airline.a1.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	
	@GetMapping("memberLogin")
	public void memberLogin() throws Exception{
		
	}
	
	@PostMapping("memberLogin")
	public ModelAndView memberLogin(MembersVO membersVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		membersVO = memberService.memberLogin(membersVO);
		
		if(membersVO != null) {
			session.setAttribute("member", membersVO);
			mv.setViewName("redirect:../");
		}else {
			mv.setViewName("member/memberLogin");
		}
		
		return mv;
	}
	@GetMapping("memberMypage")
	public void memberMypage() throws Exception{
		
	}
	
	@GetMapping("memberAgree")
	public void memberAgree() throws Exception{
		
	}
	
	@GetMapping("memberJoin")
	public void memberJoin() throws Exception{
		
	}
}
