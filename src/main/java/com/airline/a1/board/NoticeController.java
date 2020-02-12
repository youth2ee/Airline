package com.airline.a1.board;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	
	
	
	
	/**** 네이버 캡차 API ****/
	
		@RequestMapping("captchaKey.do")
		@ResponseBody
		// 뷰페이지로 인지하지말고 데이터 자체로 인지하라고 선언 web context 안에 
		// response객체안에 이 데이터를 넣어서 보내주면 값 으로 인지해서 넘어감. 
		public void APIExamCaptchaNkey(HttpServletResponse response) {				
				String clientId = "1ZAkgnqL4cplyLpj4uMb";// 애플리케이션 클라이언트 아이디값";
				String clientSecret = "ADkTTIsKUp";// 애플리케이션 클라이언트 시크릿값";			
				try {
					String code = "0"; // 키 발급시 0, 캡차 이미지 비교시 1로 세팅
					String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code;
					URL url = new URL(apiURL);
					
					HttpURLConnection con = (HttpURLConnection) url.openConnection();
					con.setRequestMethod("GET");
					con.setRequestProperty("X-Naver-Client-Id", clientId);
					con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
					
					int responseCode = con.getResponseCode();
					
					BufferedReader br;
					if (responseCode == 200) { // 정상 호출
						br = new BufferedReader(new InputStreamReader(con.getInputStream()));
					} else { // 에러 발생
						br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
					}				
					System.out.println("키발급 호출 상태 : "+responseCode);
					
					String inputLine;
					StringBuffer resp = new StringBuffer();
					
					while ((inputLine = br.readLine()) != null) {
						resp.append(inputLine);
					}				
					br.close();
					
					System.out.println("키발급 메소드 : " + resp.toString());
					System.out.println("키발급 메소드 밸류 : " + resp.toString().substring(8, 8 + 16));
					
					String key = resp.toString().substring(8, 8 + 16);
					
					PrintWriter out = response.getWriter();
					
					if(key != null) {
						out.append(key);
						out.flush();
					}				
					//mv.addObject("key", key).setViewName("redirect:captchaImg.do");
				} catch (Exception e) {
					System.out.println(e);
				}				
//				JSONObject job = new JSONObject();
//				job.put("no", 123);
//				job.put("title", "test json object");
//				job.put("writer", URLEncoder.encode("박신우","UTF-8"));
//				job.put("content", URLEncoder.encode("JSON객체를 뷰로 리턴하겠습니다.","UTF-8"));
//				
//				return job.toJSONString(); // 반환값이 원래는 기본적으로 String인데 JSON도 string으로 보내진다. 
//											//주소로 찾아가지않고 제이슨객체를 들고가게 설정하기위해 @ResponseBody를 써준다 
//								
				//return mv;
			}

			
			// 네이버 캡차 API 예제 - 캡차 이미지 수신
			@RequestMapping("captchaImg.do")
			public void APIExamCaptchaImage(@RequestParam("key") String key, HttpServletResponse response, HttpServletRequest request) {
				System.out.println("이미지 수신 메소드 : "+key);
				
				String clientId = "5UBafHl3pvkxVL8nbUOG";// 애플리케이션 클라이언트 아이디값";
				String clientSecret = "mBBrORfZyt";// 애플리케이션 클라이언트 시크릿값";				
				try {
					//String key = "CAPTCHA_KEY"; // https://openapi.naver.com/v1/captcha/nkey 호출로 받은 키값
					String apiURL = "https://openapi.naver.com/v1/captcha/ncaptcha.bin?key=" + key;
					URL url = new URL(apiURL);
					
					HttpURLConnection con = (HttpURLConnection) url.openConnection();
					con.setRequestMethod("GET");
					con.setRequestProperty("X-Naver-Client-Id", clientId);
					con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
					
					int responseCode = con.getResponseCode();
					
					BufferedReader br;
					
					if (responseCode == 200) { // 정상 호출
						
						String root = request.getSession().getServletContext().getRealPath("resources"); 
						System.out.println("캡차 루트 : " + root);
						String savePath = root + "/captchaImg"; 
						System.out.println("캡차 저장경로 : " + savePath);
					
						File folder = new File(savePath);
						
						if(!folder.exists()) {
							folder.mkdirs(); // buploadFiles folder가없으면 만들어준다. 
						}				
						InputStream is = con.getInputStream();
						int read = 0;
						byte[] bytes = new byte[1024];
						// 랜덤한 이름으로 파일 생성
						String tempname = Long.valueOf(new Date().getTime()).toString();
						
						File f = new File(folder+"/"+tempname + ".jpg");
						f.createNewFile();
						
						OutputStream outputStream = new FileOutputStream(f);
						
						while ((read = is.read(bytes)) != -1) {
							outputStream.write(bytes, 0, read);
						}						
						is.close();
						
						PrintWriter out = response.getWriter();
						
						out.append(tempname+".jpg");
						out.flush();					
					} else { // 에러 발생						
						br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
						
						String inputLine;
						StringBuffer resp = new StringBuffer();
						
						while ((inputLine = br.readLine()) != null) {
							resp.append(inputLine);
						}						
						br.close();						
					}					
					System.out.println("정상호출 : "+responseCode);
				} catch (Exception e) {
					System.out.println(e);
				}				
//				return "common/captchaApi/naverCaptcha";
			}

			
			// 네이버 캡차 API 예제 - 입력값 비교
			@RequestMapping("checkNo.do")
			@ResponseBody 
			public String APIExamCaptchaNkeyResult(String key, String value) {			
				String clientId = "5UBafHl3pvkxVL8nbUOG";// 애플리케이션 클라이언트 아이디값";
				String clientSecret = "mBBrORfZyt";// 애플리케이션 클라이언트 시크릿값";
				StringBuffer response = new StringBuffer();				
				try {
					String code = "1"; // 키 발급시 0, 캡차 이미지 비교시 1로 세팅
					//String key = "CAPTCHA_KEY"; // 캡차 키 발급시 받은 키값
					//String value = "USER_VALUE"; // 사용자가 입력한 캡차 이미지 글자값
					String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code + "&key=" + key + "&value=" + value;

					URL url = new URL(apiURL);
					
					HttpURLConnection con = (HttpURLConnection) url.openConnection();
					con.setRequestMethod("GET");
					con.setRequestProperty("X-Naver-Client-Id", clientId);
					con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
					
					int responseCode = con.getResponseCode();
					
					BufferedReader br;
					if (responseCode == 200) { // 정상 호출
						br = new BufferedReader(new InputStreamReader(con.getInputStream()));
						//{"result":true,"responseTime":84.6}
						System.out.println("입력값 비교 정상 호출 : "+br);
					} else { // 에러 발생						
						br = new BufferedReader(new InputStreamReader(con.getErrorStream()));						
					}
					String inputLine;
					
					while ((inputLine = br.readLine()) != null) {
						response.append(inputLine);
					}			
					br.close();
					
					System.out.println("입력값 비교 메소드 : "+response.toString());					
				} catch (Exception e) {
					System.out.println(e);
				}
				return response.toString();
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
	
	
	
	/**** File ****/
	@PostMapping(value = "noticeFileDelete")
	public ModelAndView noticeFileDelete(NoticeFilesVO noticeFilesVO)throws Exception{
			ModelAndView mv = new ModelAndView();
			int result = noticeService.NoticeFileDelete(noticeFilesVO);
			mv.setViewName("board/common/common_ajaxResult");
			mv.addObject("result", result);
			
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
		  int result =noticeService.noticeWrite(noticeVO, file);
	  
	  String msg = "작성에 실패하였습니다.다시 작성해주세요."; 
	  String path = "./noticeList";
	  
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
	  
	  
	/**** NoticeSelect ****/
	  
	  @GetMapping("noticeSelect")
	  public ModelAndView NoticeSelect(NoticeVO noticeVO)throws Exception{
		  ModelAndView mv = new ModelAndView();
		  NoticeVO noticeVO2= noticeService.noticeSelect(noticeVO);
		  NoticeVO noticeVO3 = noticeService.next(noticeVO);
		/* List<BoardVO> ar =noticeService.listView(noticeVO); */
		
		 noticeVO = noticeService.prev(noticeVO);
		 
		  	mv.addObject("vo", noticeVO2);
		  	mv.addObject("prev", noticeVO);
		  	mv.addObject("next", noticeVO3);
		  	mv.addObject("board", "notice");
			mv.setViewName("board/boardSelect");
				
			return mv;
		  
	  }
	  
	  
	/**** Notice Update ****/
	  
		@GetMapping("noticeUpdate")
		public ModelAndView noticeUpdate(NoticeVO noticeVO, Pager pager)throws Exception{
			ModelAndView mv = new ModelAndView();
			noticeVO.setNum(noticeVO.getNum());
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
			  mv.addObject("message", "게시글이 수정되었습니다.");
		  }else {
			  mv.addObject("message", "수정에 실패하였습니다. 다시 시도해주세요.");
		  }
		  mv.addObject("path", "noticeList");
		  mv.setViewName("board/common/result");
		  
		  return mv;
	  }

	  
	  
	/**** noticeDelete ****/
	
	@GetMapping("noticeDelete")
	public ModelAndView noticeDelete(NoticeVO noticeVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = noticeService.noticeDelete(noticeVO);
		if(result>0) {
			mv.addObject("message", "게시글이 삭제되었습니다.");
		}else {
			mv.addObject("message", "삭제에 실패하였습니다. 다시 시도해주세요.");
		}
			mv.addObject("path","noticeList");
			mv.setViewName("board/common/result");
			
			return mv;
	}
	 

}
