package com.zhiyou.filter;


import java.io.IOException;
import java.util.Arrays;

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



public class UserFilter implements Filter{
	private String [] uril={"/SSM/index.jsp","/SSM/login","/SSM/loginuser","/SSM/在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/*"};

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		//将我们上面定义的数组转化为list集合，判断当前访问的是否出现在放行
		//数组中，如果没有出现，就去判断用户是否登录。
		HttpServletRequest req=(HttpServletRequest) request;
		HttpServletResponse resp=(HttpServletResponse) response;
		String uri=req.getRequestURI();
		
		  if (!Arrays.asList(uril).contains(uri)) {
				User user= (User) req.getSession().getAttribute("USER");
				Admin admin= (Admin) req.getSession().getAttribute("ADMIN");
				System.out.println(Arrays.asList(uril)+"*"+Arrays.asList(uril).contains(uri));

				if (user==null) {
					resp.sendRedirect("index.jsp");
					return;
				}
			}
			  chain.doFilter(req, resp);
	
	}

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	
		
}
