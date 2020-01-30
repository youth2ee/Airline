package com.airline.a1.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.airline.a1.boardUtil.Pager;

@Controller
@RequestMapping("/notice/**")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@ModelAttribute(name = "notice")
	public NoticeVO getNotice()throws Exception{
			return new NoticeVO();
	}
	
	@GetMapping("noticeWrite")
	public ModelAndView noticeWrite()throws Exception{
			ModelAndView mv = new ModelAndView();
			mv.addObject("board", "notice");
			mv.setViewName("board/boardWrite");
				
			return mv;
	}
	
	
	  @PostMapping("noticeWrite")
	  public ModelAndView noticeWrite(NoticeVO noticeVO, MultipartFile[] file)throws Exception{
		  
	  ModelAndView mv = new ModelAndView(); 
	  int result =noticeService.noticeWrite(noticeVO, file);
	  
	  String msg = "작성에 실패하였습니다.다시 작성해주세요."; 
	  String path = "../";
	  
	  if(result > 0) { 
		  msg = "작성되었습니다."; 
		  }
	  
	  mv.setViewName("board/common/result"); 
	  mv.addObject("message", msg);
	  mv.addObject("path", path);
	  
	  return mv; 
	  }
	 
	 
	 @GetMapping("noticeList")
	 public ModelAndView noticeList(Pager pager)throws Exception{
		 	List<BoardVO> ar = noticeService.noticeList(pager);
		 	ModelAndView mv = new ModelAndView();
		 	int totalCount = noticeService.noticeCount(pager);
	 	
		 	mv.addObject("tc", totalCount);
		 	mv.addObject("board", "notice"); 
		 	mv.addObject("list", ar);
		 	mv.addObject("pager", pager);
		 	mv.setViewName("board/boardList");
		 	
		 	return mv;
	 }
		

}
