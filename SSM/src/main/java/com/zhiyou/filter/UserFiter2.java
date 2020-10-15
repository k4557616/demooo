package com.zhiyou.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhiyou.model.User;

public class UserFiter2 implements Filter{

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request2=(HttpServletRequest) request;
		HttpServletResponse response2=(HttpServletResponse) response;
		
		String uri=request2.getRequestURI();
		User user=(User) request2.getSession().getAttribute("USER");
		if (user!=null) {
			chain.doFilter(request2, response2);
		}else {
			response2.sendRedirect("index.jsp");
		}
		
		
	}

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
