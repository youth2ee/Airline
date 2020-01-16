package com.airline.a1.limo;

import java.util.List;

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
	public ModelAndView arrLoc(LimoInfoVO limoInfoVO, String depLoc)throws Exception{
		ModelAndView mv = new ModelAndView();
		limoInfoVO.setDepLoc(depLoc);
		List<LimoInfoVO> ar = limoService.limoInfo(limoInfoVO);
		mv.addObject("list", ar);
		mv.setViewName("limo/arrLoc");
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

}
