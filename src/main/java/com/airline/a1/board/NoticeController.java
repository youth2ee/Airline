package com.airline.a1.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	

	
	
	/**** summerNote ****/	
	
	@PostMapping(value = "summerfileDelete")
	public ModelAndView summerfileDelete(String file, HttpSession session)throws Exception{
		boolean check = noticeService.summerfileDelete(file, session);
		String result = "Delete Fail";
		if(check) {
			result = "Delete Success";
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/common/common_ajaxResult");
		mv.addObject("result", result);
		return mv;
	}
	
	@PostMapping(value = "summerFile")
	public ModelAndView summerFile(MultipartFile file, HttpSession session)throws Exception{
		System.out.println("ddd1123123213");
		String fileName = noticeService.summerfile(file, session);
		//System.out.println(file.getOriginalFilename()); test
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("board/common/common_ajaxResult");
		mv.addObject("result", fileName);
		return mv;
	}
	
	

	
	/**** NoticeWrite****/
	
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
		/* noticeVO.getContents().replaceAll("\r\n", "<br>"); */
		/* noticeVO.setContents(noticeVO.getContents().replaceAll("\r\n", "<br>")); */
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
	 
	 
	
	/**** NoticeList ****/
	  
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
	  
	  @GetMapping("noticeList1")
	  public ModelAndView noticeList1(Pager pager)throws Exception{
		 
		  List<BoardVO> ar = noticeService.subNoticeList(pager);
		  ModelAndView mv = new ModelAndView(); 
		  int totalCount = noticeService.noticeCount2(pager);
		  	  
		  mv.addObject("tc", totalCount); 
		  mv.addObject("board", "notice");
		  mv.addObject("list", ar);
		  mv.addObject("pager", pager);
		  mv.setViewName("board/boardList1");
		  return mv; 
	  }
	  
	  @GetMapping("noticeList2")
	  public ModelAndView noticeList2(Pager pager)throws Exception{
		 
		  List<BoardVO> ar = noticeService.subNoticeList(pager);
		  ModelAndView mv = new ModelAndView(); 
		  int totalCount = noticeService.noticeCount2(pager);
		  	  
		  mv.addObject("tc", totalCount); 
		  mv.addObject("board", "notice");
		  mv.addObject("list", ar);
		  mv.addObject("pager", pager);
		  mv.setViewName("board/boardList2");
		  return mv; 
	  }
	  
	  @GetMapping("noticeList3")
	  public ModelAndView noticeList3(Pager pager)throws Exception{
		 
		  List<BoardVO> ar = noticeService.subNoticeList(pager);
		  ModelAndView mv = new ModelAndView(); 
		  int totalCount = noticeService.noticeCount2(pager);
		  	  
		  mv.addObject("tc", totalCount); 
		  mv.addObject("board", "notice");
		  mv.addObject("list", ar);
		  mv.addObject("pager", pager);
		  mv.setViewName("board/boardList3");
		  return mv; 
	  }
	  
	  @GetMapping("noticeList4")
	  public ModelAndView noticeList4(Pager pager)throws Exception{
		 
		  List<BoardVO> ar = noticeService.subNoticeList(pager);
		  ModelAndView mv = new ModelAndView(); 
		  int totalCount = noticeService.noticeCount2(pager);
		  	  
		  mv.addObject("tc", totalCount); 
		  mv.addObject("board", "notice");
		  mv.addObject("list", ar);
		  mv.addObject("pager", pager);
		  mv.setViewName("board/boardList4");
		  return mv; 
	  }
	 
	  @GetMapping("noticeList5")
	  public ModelAndView noticeList5(Pager pager)throws Exception{
		 
		  List<BoardVO> ar = noticeService.subNoticeList(pager);
		  ModelAndView mv = new ModelAndView(); 
		  int totalCount = noticeService.noticeCount2(pager);
		  	  
		  mv.addObject("tc", totalCount); 
		  mv.addObject("board", "notice");
		  mv.addObject("list", ar);
		  mv.addObject("pager", pager);
		  mv.setViewName("board/boardList5");
		  return mv; 
	  }
	 
	
	/*List한번에 받기 
	 * @GetMapping("subNoticeList") public ModelAndView subNoticeList(Pager
	 * pager)throws Exception{
	 * 
	 * ModelAndView mv = new ModelAndView(); List<BoardVO> ar =
	 * noticeService.subNoticeList(pager); int totalCount =
	 * noticeService.noticeCount2(pager);
	 * 
	 * 
	 * 
	 * }
	 */
	 
	 
	    
	  
	  
	/**** NoticeSelect ****/
	  
	  @GetMapping("noticeSelect")
	  public ModelAndView NoticeSelect(NoticeVO noticeVO)throws Exception{
		  ModelAndView mv = new ModelAndView();
		  NoticeVO noticeVO2= noticeService.noticeSelect(noticeVO);
		/* noticeVO2.setContents(noticeVO2.getContents().replaceAll("\r\n", "<br>")); */
		  
		  	mv.addObject("vo", noticeVO2);
		  	mv.addObject("board", "notice");
			mv.setViewName("board/boardSelect");
				
			return mv;
		  
	  }
	 
/*	  @GetMapping("noticeSelect")
	  public ModelAndView NoticeSelect2(NoticeVO noticeVO)throws Exception{
		  ModelAndView mv = new ModelAndView();
		  NoticeVO noticeVO2= noticeService.subNoticeSelect(noticeVO);
		  
		  	mv.addObject("vo", noticeVO2);
		  	mv.addObject("board", "notice");
			mv.setViewName("board/boardSelect");
				
			return mv;*/
		  
	 // }
	  
		@GetMapping("noticeUpdate")
		public ModelAndView noticeUpdate(int num)throws Exception{
			ModelAndView mv = new ModelAndView();
			NoticeVO noticeVO = new NoticeVO();
			noticeVO.setNum(num);
			
			noticeVO = noticeService.noticeSelect(noticeVO);
			mv.addObject("board", "notice");
			mv.addObject("vo", noticeVO);
			mv.setViewName("board/boardUpdate");
			
			return mv;
		}
		
	  
	  
	  @PostMapping("noticeUpdate")
	  public ModelAndView noticeUpdate(NoticeVO noticeVO, MultipartFile[] file,HttpSession session)throws Exception{
		  ModelAndView mv = new ModelAndView();
		  
		  int result = noticeService.noticeUpdate(noticeVO,file,session);
		  
		  if(result>0) {
			  mv.addObject("message", "글이 수정되었습니다.");
		  }else {
			  mv.addObject("message", "수정에 실패하였습니다. 다시 시도해주세요.");
		  }
		  mv.addObject("path", "noticeList");
		  mv.setViewName("board/common/result");
		  
		  return mv;
	  }

	 

}
