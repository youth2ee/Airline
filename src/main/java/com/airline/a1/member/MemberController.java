package com.airline.a1.member;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.airline.a1.send.MailService;
import com.airline.a1.send.SmsService;

@Controller
@RequestMapping("member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private SmsService smsService;
	@Autowired
	private MailService mailService;
	
	//로그인페이지이동
	@GetMapping("memberLogin")
	public void memberLogin() throws Exception{
		
	}
	//로그인
	@PostMapping("memberLogin")
	public ModelAndView memberLogin(MembersVO membersVO, HttpSession session, String loginType) throws Exception{
		ModelAndView mv = new ModelAndView();
		if(loginType.equals("I")) {
			membersVO = memberService.memberLogin(membersVO);
		}else {
			membersVO = memberService.memberLogin2(membersVO);
		}
		
		
		if(membersVO != null) {
			session.setAttribute("member", membersVO);
			mv.setViewName("redirect:../");
		}else {
			mv.setViewName("member/memberLogin");
		}
		
		return mv;
	}
	
	@GetMapping("memberLogout")
	public ModelAndView memberLogout(HttpSession session) {
		session.invalidate();
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("common/common_result");
		mv.addObject("msg", "로그아웃이 완료되었습니다.");
		mv.addObject("path", "../");
		
		return mv;
	}
	
	
	@GetMapping("memberMypage")
	public void memberMypage() throws Exception{
		
	}
	
	//약관동의페이지이동
	@GetMapping("memberAgree")
	public void memberAgree(HttpServletRequest request) throws Exception{
		System.out.println(request.getHeader("Referer"));
	}
	
	//회원가입페이지이동
	@GetMapping("memberJoin")
	public ModelAndView memberJointo(HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView();
		if(request.getHeader("Referer") == null) {
			mv.setViewName("common/common_result");
			mv.addObject("msg", "약관 동의 후 진행해주세요.");
			mv.addObject("path", "./memberAgree");
		}else{
			mv.setViewName("member/memberJoin");
		}
		
		return mv;
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
	public ModelAndView FindId(ModelAndView mv) throws Exception{
		mv.setViewName("member/FindId");
		return mv;
	}
	@ResponseBody
	@GetMapping("memberidFindbyPhone")
	public int memberidFindbyPhone(MembersVO membersVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		membersVO = memberService.memberidFindbyPhone(membersVO);
		int result = 0;
		if(membersVO != null) {
			result = 1;
			//int message = smsService.smsSend(membersVO.getPhone());
			Calendar calendar = Calendar.getInstance();
			Long time = calendar.getTimeInMillis();
			session.setAttribute("time", time);
			int message = 123456;
			session.setAttribute("number", message);
		}
		return result;
	}
	
	@ResponseBody
	@PostMapping("memberidFindbyPhone")
	public String memberidFindbyPhone(String code, HttpSession session, MembersVO membersVO) throws Exception{
		String id = "0";
		String message = session.getAttribute("number").toString();
		Calendar calendar = Calendar.getInstance();
		Long time = calendar.getTimeInMillis();
		time = time - Long.valueOf(session.getAttribute("time").toString());
		if(code.equals(message)) {
			id = "1";
			if(time < 300000) {
				membersVO = memberService.memberidFindbyPhone(membersVO);
				id = membersVO.getId();
			}
		}
		return id;
	}
	
	@ResponseBody
	@PostMapping("memberidFindbyEmail")
	public int memberidFindbyEmail(MembersVO membersVO, HttpServletRequest request, ModelMap mo, HttpSession session) throws Exception{
		membersVO = memberService.memberidFindbyEmail(membersVO);
		int id = 0;
		if(membersVO != null) {
			id = 1;
			mailService.mailFindId2(membersVO);
		}
		return id;
	}
	
	@PostMapping("FindIdResult")
	public ModelAndView findIdResult(MembersVO membersVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("memberVO", membersVO);
		mv.setViewName("member/FindIdResult");
		return mv;
	}
	
	@GetMapping("newwindow")
	public void newwindow() throws Exception{
		
	}
}
