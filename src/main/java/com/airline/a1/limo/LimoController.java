package com.airline.a1.limo;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.coyote.http11.Http11AprProtocol;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.airline.a1.member.MembersVO;

@Controller
@RequestMapping("limo/**")
public class LimoController {
	
	@Autowired
	private LimoService limoService;
	
	@GetMapping("limoHome")
	public void limoHome() throws Exception{
	}
	
	@GetMapping("limoBook")
	public void limoBook()throws Exception{
	}
	@GetMapping("limoBook2")
	public void limoBook2()throws Exception{
	}
	
	
	@PostMapping("limoBook")
	public ModelAndView limoBook(HttpSession session, Date [] limoDate, int [] limoPrice, String [] id, String [] depLoc, String [] arrLoc, String [] limoTime, String [] seat, int [] person, int [] child) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<LimoVO> ar = new ArrayList<LimoVO>(); 
		LimoVO limoVO = new LimoVO();
		MembersVO membersVO = new MembersVO();
		membersVO = (MembersVO)session.getAttribute("member");
		limoVO.setId(membersVO.getId());
		int result = 0;
		for (int i = 0; i < limoDate.length; i++) {
			limoVO.setLimoDate(limoDate[i]);
			limoVO.setLimoPrice(limoPrice[i]);
			limoVO.setId(id[i]);
			limoVO.setDepLoc(depLoc[i]);
			limoVO.setArrLoc(arrLoc[i]);
			limoVO.setLimoTime(limoTime[i]);
			limoVO.setSeat(seat[i]);
			limoVO.setPerson(person[i]);
			limoVO.setChild(child[i]);
			ar.add(limoVO);
			limoService.limoBook(limoVO);  
		}
		mv.addObject("member", membersVO);
		mv.addObject("vo", ar);
		mv.setViewName("imPay/imPayComplete2");
		return mv;
	}
	@PostMapping("limoBook2")
	public ModelAndView limoBook2(HttpSession session ,Date [] limoDate, int [] limoPrice, String [] id, String [] depLoc, String [] arrLoc, String [] limoTime, String [] seat, int [] person, int [] child) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<LimoVO> ar = new ArrayList<LimoVO>();
		LimoVO limoVO = new LimoVO();
		MembersVO membersVO = new MembersVO();
		membersVO = (MembersVO)session.getAttribute("member");
		limoVO.setId(membersVO.getId());
		int result = 0;
		for (int i = 0; i < limoDate.length; i++) {
			limoVO.setLimoDate(limoDate[i]);
			limoVO.setLimoPrice(limoPrice[i]);
			limoVO.setId(id[i]);
			limoVO.setDepLoc(arrLoc[i]);
			limoVO.setArrLoc(depLoc[i]);
			limoVO.setLimoTime(limoTime[i]);
			limoVO.setSeat(seat[i]);
			limoVO.setPerson(person[i]);
			limoVO.setChild(child[i]);
			ar.add(limoVO);
			limoService.limoBook(limoVO);
		}
		mv.addObject("member", membersVO);
		mv.addObject("vo", ar);
		mv.setViewName("imPay/imPayComplete2");
		return mv;
	}
	
	@GetMapping("arrLoc")
	public ModelAndView arrLoc(LimoInfoVO limoInfoVO, String depLoc, String sec)throws Exception{
		ModelAndView mv = new ModelAndView();
		limoInfoVO.setDepLoc(depLoc);
		List<LimoInfoVO> ar = limoService.limoInfo(limoInfoVO);
		mv.addObject("list", ar);
		mv.setViewName("limo/arrLoc");
		mv.addObject("sec", sec);
		return mv;
	}
	
	@GetMapping("limoSelect")
	public ModelAndView limoSelect(LimoVO limoVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<LimoVO> ar = limoService.limoSelect(limoVO);
		mv.addObject("limoPic", ar);
		mv.setViewName("limo/limoSelect");
		return mv;
	}

	@GetMapping("disabled")
	public ModelAndView disabled(LimoVO limoVO, HttpServletRequest httpServletRequest)throws Exception{
		ModelAndView mv = new ModelAndView();
		if(httpServletRequest.getHeader("Referer").equals("http://localhost/limo/limoBook2")) {
			String dep = limoVO.getDepLoc();
			String arr = limoVO.getArrLoc();
			limoVO.setArrLoc(dep);
			limoVO.setDepLoc(arr);
		}
		List<LimoVO> ar = limoService.limoSelect(limoVO);
		List<String> seat = new ArrayList<String>();
		for(int i=0; i<ar.size(); i++) {
			String [] r = ar.get(i).getSeat().split("번");
			for (int j = 0; j < r.length; j++) {
				r[j].replace("번", "");
				seat.add(r[j]);
			}
		}
		mv.addObject("disabled", seat);
		mv.setViewName("limo/disabled");
		return mv;
	}
}