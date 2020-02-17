package com.airline.a1.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class CustomInterceptor extends HandlerInterceptorAdapter{

	
	//controller 진입 전 사용
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		System.out.println("controller 진입전");
		
		return true;
	}//boolean타입으로 리턴 : true-controller로 보낸다  / false-controller로 안보낸다
	
	
	//controller 종료 후 사용
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		System.out.println("controller 종료 후");
		
	}
	
	
	//jsp 완성 후 사용
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
		System.out.println("jsp 완성 후");
	}
	
	
	//비동기 방식으로 들어올 때 사용  : ajax등으로 들어올때
	@Override
	public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		//비동기 요청시 postHandle, afterCompletion 수행하지 않고 이 메서드를 수행
	}
	
}
