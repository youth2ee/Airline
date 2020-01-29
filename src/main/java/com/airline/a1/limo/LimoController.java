package com.airline.a1.limo;

import java.sql.Date;
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
	public ModelAndView limoBook(Date [] limoDate, int [] limoPrice, String [] id, String [] depLoc, String [] arrLoc, String [] limoTime, String [] seat, int [] person) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = 0;
		for (int i = 0; i < limoDate.length; i++) {
			LimoVO limoVO = new LimoVO();
			limoVO.setLimoDate(limoDate[i]);
			limoVO.setLimoPrice(limoPrice[i]);
			limoVO.setId(id[i]);
			limoVO.setDepLoc(depLoc[i]);
			limoVO.setArrLoc(arrLoc[i]);
			limoVO.setLimoTime(limoTime[i]);
			limoVO.setSeat(seat[i]);
			limoVO.setPerson(person[i]);
			limoService.limoBook(limoVO);
		}
		return mv;
	}
	@PostMapping("limoBook2")
	public ModelAndView limoBook2(Date [] limoDate, int [] limoPrice, String [] id, String [] depLoc, String [] arrLoc, String [] limoTime, String [] seat, int [] person) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = 0;
		for (int i = 0; i < limoDate.length; i++) {
			LimoVO limoVO = new LimoVO();
			limoVO.setLimoDate(limoDate[i]);
			limoVO.setLimoPrice(limoPrice[i]);
			limoVO.setId(id[i]);
			limoVO.setDepLoc(depLoc[i]);
			limoVO.setArrLoc(arrLoc[i]);
			limoVO.setLimoTime(limoTime[i]);
			limoVO.setSeat(seat[i]);
			limoVO.setPerson(person[i]);
			limoService.limoBook(limoVO);
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
		mv.addObject("disabled", ar);
		mv.setViewName("limo/disabled");
		return mv;
	}
}
