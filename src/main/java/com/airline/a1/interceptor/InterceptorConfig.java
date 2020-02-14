package com.airline.a1.interceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


@Configuration //이것은 xml파일입니다.
public class InterceptorConfig implements WebMvcConfigurer {
//web에 관련된 설정을 하자 : WebMvcConfigurer
	
	@Autowired
	private CustomInterceptor customInterceptor;
	
	@Autowired
	private MemberInterceptor memberInterceptor;
	
	@Autowired
	private NoticeInterceptor noticeInterceptor;
	
	@Autowired
	private NoticeSelectInterceptor noticeSelectInterceptor;

	//addInterceptors :  interceptor를 등록하는 메서드
	@Override
		public void addInterceptors(InterceptorRegistry registry) {
			//interceptor를 등록하기 : interceptorResistry에 등록/customInterceptor는 상속받으므로 handler어쩌구 타입이 맞다
			//registry.addInterceptor(customInterceptor) 
			//.addPathPatterns("/member/*") // /*하면 전부 //Interceptor를 사용할 URL패턴을 등록
			//.addPathPatterns("/member/memberPage") //.더하면 계속 추가가능하다.
			//.excludePathPatterns("/member/memberLogin") //Interceptor를 제외할 URL패턴을 등록
			//.excludePathPatterns("member/memberJoin");
		
		
			//registry.addInterceptor(interceptor) : 더 하려면 추가가능
			
		
		
			//로그인안되어 있으면 memberPage못가게 하기
			registry.addInterceptor(memberInterceptor)
			.addPathPatterns("/member/memberPage");
			
			registry.addInterceptor(noticeInterceptor)
			.addPathPatterns("/notice/noticeWrite");
			
			registry.addInterceptor(noticeSelectInterceptor)
			.addPathPatterns("/notice/noticeSelect");
			
			//WebMvcConfigurer.super.addInterceptors(registry);
		}
	
}
