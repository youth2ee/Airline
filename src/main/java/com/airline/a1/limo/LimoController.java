package com.airline.a1.limo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.coyote.http11.Http11AprProtocol;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("limo/**")
public class LimoController {
	
	@Autowired
	private LimoService limoService;
	
	@GetMapping("limoBook")
	public void limoBook()throws Exception{
	}
	
	@PostMapping("limoBook")
	public ModelAndView limoBook(LimoVO limoVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = limoService.limoBook(limoVO);
		
		if(result >0) {
			mv.addObject("limo", limoVO);
			mv.setViewName("index");
		}
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
	public ModelAndView disabled(LimoVO limoVO)throws Exception{
		System.out.println("hi");
		ModelAndView mv = new ModelAndView();
		List<LimoVO> ar = limoService.limoSelect(limoVO);
		System.out.println(ar.size());
		System.out.println(limoVO.getArrLoc());
		System.out.println(limoVO.getDepLoc());
		System.out.println(limoVO.getLimoTime());
		System.out.println(limoVO.getLimoDate());
		mv.addObject("disabled", ar);
		mv.setViewName("limo/disabled");
		return mv;
	}
}
