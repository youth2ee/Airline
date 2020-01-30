package com.airline.a1.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.airline.a1.send.SmsService;

@Controller
@RequestMapping("member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private SmsService smsService;
	
	
	//로그인페이지이동
	@GetMapping("memberLogin")
	public void memberLogin() throws Exception{
		
	}
	//로그인
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
	
	//약관동의페이지이동
	@GetMapping("memberAgree")
	public void memberAgree() throws Exception{
		
	}
	
	//회원가입페이지이동
	@GetMapping("memberJoin")
	public void memberJoin() throws Exception{
		
	}
	
	//id중복체크
	@ResponseBody
	@GetMapping("memberidCheck")
	public int memberidCheck(MembersVO membersVO) throws Exception{
		membersVO = memberService.memberidCheck(membersVO);
		int result = 0;
		if(membersVO != null) {
			result =1;
		}
		return result;
	}
	
	//회원가입
	@PostMapping("memberJoin")
	public ModelAndView memberJoin(MembersVO membersVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = memberService.memberJoin(membersVO);
		if(result >0) {
			mv.setViewName("member/JoinFinish");
		}else {
			mv.setViewName("member/memberJoin");
		}
		return mv;
	}
	//회원가입 완료
	@GetMapping("JoinFinish")
	public void JoinFinish() throws Exception{
		
	}
	
	//아이디찾기
	@GetMapping("FindId")
	public void FindId() throws Exception{
		
	}
	@ResponseBody
	@GetMapping("memberidFindbyPhone")
	public int memberidFindbyPhone(MembersVO membersVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		membersVO = memberService.memberidFindbyPhone(membersVO);
		int result = 0;
		if(membersVO != null) {
			result = 1;
			int message = smsService.smsSend(membersVO.getPhone());
			session.setAttribute("number", message);
			session.setMaxInactiveInterval(300);
		}
		return result;
	}
	
	@ResponseBody
	@PostMapping("memberidFindbyPhone")
	public int memberidFindbyPhone(String code, HttpSession session) throws Exception{
		int result = 0;
		String message = session.getAttribute("number").toString();
		if(code.equals(message)) {
			result =1;
		}
		return result;
	}
}
