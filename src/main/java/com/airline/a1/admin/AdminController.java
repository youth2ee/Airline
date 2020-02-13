package com.airline.a1.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Conditional;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.airline.a1.board.BoardVO;
import com.airline.a1.board.NoticeService;
import com.airline.a1.board.NoticeVO;
import com.airline.a1.boardUtil.Pager;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;

@Controller
@RequestMapping("/admin/**")
public class AdminController {
	
	/*
	 * @GetMapping public void main() throws Exception{
	 * 
	 * }
	 */
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("adminmain")
	public void adminmain() throws Exception{
		
	}
	
	@GetMapping("admin1_1")
	public void admin1_1() throws Exception{
		
	}
	
	@GetMapping("admin1_2")
	public void admin1_2() throws Exception{
		
	}
	
	@GetMapping("admin1_3")
	public void admin1_3() throws Exception{
		
	}
	
	@GetMapping("admin2_1")
	public void admin2_1(Model model) throws Exception{
		List<AirlineVO> airlineVOs = adminService.airlineList();
		
		model.addAttribute("alist", airlineVOs);
	}
	
	@GetMapping("admin2_2")
	public void admin2_2() throws Exception{
		
	}
	
	@GetMapping("admin3_1")
	public void admin3_1() throws Exception{
		
	}
	
	@GetMapping("admin4_1")
	public void admin4_1(Model model, Pager pager) throws Exception{
		List<BoardVO> ar = noticeService.noticeList(pager);	
		model.addAttribute("list", ar);
	}
	
	@GetMapping("admin5_1")
	public void admin5_1() throws Exception{
		
	}
	
	@GetMapping("admin5_2")
	public void admin5_2() throws Exception{
		
	}

	@GetMapping("admin6_1")
	public void admin6_1() throws Exception{
		
	}
	
	@GetMapping("admin6_2")
	public void admin6_2() throws Exception{
		
	}
	
	@GetMapping("admin7_1")
	public void admin7_1() throws Exception{
		
	}

}

