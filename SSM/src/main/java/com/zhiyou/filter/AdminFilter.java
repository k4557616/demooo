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

import com.zhiyou.model.Admin;
import com.zhiyou.model.User;

public class AdminFilter implements Filter{

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		HttpServletRequest req=(HttpServletRequest) request;
		HttpServletResponse resp=(HttpServletResponse) response;
		
			
			Admin admin=(Admin) req.getSession().getAttribute("ADMIN");
			if(admin!=null){
				chain.doFilter(req, resp);
			}else{
				resp.sendRedirect("index.jsp");
			}
	}

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	
	
}
