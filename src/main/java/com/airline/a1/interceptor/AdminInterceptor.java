package com.airline.a1.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.airline.a1.member.MembersVO;

@Component
public class AdminInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		MembersVO memberVO = (MembersVO)request.getSession().getAttribute("member");
		
		if(memberVO != null) {
			if( memberVO.getId().equals("admin")) {
				return true;
			}else {
				response.sendRedirect("../");
				return false;
			}
		}else {
			response.sendRedirect("../");
			return false;
		}

	}
	
	
}
