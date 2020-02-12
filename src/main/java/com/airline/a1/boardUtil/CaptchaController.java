package com.airline.a1.boardUtil;

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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class CaptchaController {

	// 네이버 캡차 API 예제 - 키발급
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
			
//			JSONObject job = new JSONObject();
//			job.put("no", 123);
//			job.put("title", "test json object");
//			job.put("writer", URLEncoder.encode("박신우","UTF-8"));
//			job.put("content", URLEncoder.encode("JSON객체를 뷰로 리턴하겠습니다.","UTF-8"));
//			
//			return job.toJSONString(); // 반환값이 원래는 기본적으로 String인데 JSON도 string으로 보내진다. 
//										//주소로 찾아가지않고 제이슨객체를 들고가게 설정하기위해 @ResponseBody를 써준다 
//			
			
			//return mv;
		}

		// 네이버 캡차 API 예제 - 캡차 이미지 수신
		@RequestMapping("captchaImg.do")
		public void APIExamCaptchaImage(@RequestParam("key") String key, HttpServletResponse response, 
										HttpServletRequest request) {
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
			
//			return "common/captchaApi/naverCaptcha";
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
				String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code + "&key=" + key + "&value="
						+ value;

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
	
}
