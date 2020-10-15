package com.zhiyou.interceptor;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.zhiyou.model.Admin;
import com.zhiyou.model.User;

public class UserInterceptor implements HandlerInterceptor {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		User user = (User) request.getSession().getAttribute("USER");
		Admin admin = (Admin) request.getSession().getAttribute("ADMIN");
		/**
		 * 
		 */
		/*if (user==null&&admin==null) {
			response.sendRedirect("index.jsp");
			return false;
		}
		return true;*/
		
		
		//获得当前请求
	String uri = request.getRequestURI();
		 //后台请求
				List<String> adminList = new ArrayList<String>();
				adminList.add("course");
				adminList.add("speaker");
				adminList.add("video");
				adminList.add("admin");
				adminList.add("subject");
			
				if (user == null && admin == null) { //如果用户或者管理员数据为空,代表没有登录,返回登录页面
					response.sendRedirect("index.jsp");
					return false;
				} else if (admin != null) {
					for (String string : adminList) {
						if (uri.contains(string)) {
						//	System.out.println("uri="+uri+" uri.contains(string)="+uri.contains(string)+" string="+string+" list="+adminList);
							return true;
						}
					}
				}
				//没有进if表示登录成功,可以访问controller
				return true;
		
	}

	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

	}

	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}

}
