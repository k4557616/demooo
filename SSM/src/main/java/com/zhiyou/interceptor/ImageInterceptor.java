package com.zhiyou.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class ImageInterceptor implements HandlerInterceptor{

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		 MultipartFile file=(MultipartFile) request.getSession().getAttribute("FILE");
		 boolean jpg=file.getContentType().endsWith("jpg");
		 
		 System.out.println(file);
		 System.out.println(file.getContentType());
		 
		 System.out.println(file.getSize());
		 long maxSize=100*1024;
		 System.out.println("上传开始");
		 if (file.getSize()<maxSize&&file.getContentType().endsWith("png")||file.getContentType().endsWith("jpeg")||jpg) {
			 System.out.println("上传成功");
			 return true;
		}else {
			System.out.println("上传失败");
			response.sendRedirect("userbyidT");//UpdateImage.jsp
			return false;
		}
		
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
