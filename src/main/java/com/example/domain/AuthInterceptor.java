package com.example.domain;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		
		// 로그인이 되지 않은 경우
		if(session.getAttribute("uid") == null){
			// 이동하고자 했던 주소를 세션에 저장
			String path = request.getServletPath();
			//System.out.println("path = " + path);
			if(request.getMethod().equals("GET")){
				session.setAttribute("dest", path);
			}
			
			response.sendRedirect("login");
		}
		return super.preHandle(request, response, handler);
	}

	
	
}
