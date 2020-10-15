package com.zhiyou.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.zhiyou.model.Admin;
import com.zhiyou.model.User;
import com.zhiyou.service.AdminService;
import com.zhiyou.service.UserService;
import com.zhiyou.util.MD5Utils;

@Controller
public class AdminController {
	@Autowired
	AdminService service;

	@GetMapping("login")
	public String login(String username,String password2,HttpServletRequest req,HttpServletResponse resp) {
	  Admin admin=service.selectByName(username, MD5Utils.md5(password2));//MD5Utils.md5(password2)
	    req.getSession().setAttribute("ADMIN", admin);
	   
		return  admin==null?"index":"forward:courseshow";
	}
	
	@ResponseBody
	@RequestMapping("adminSelect")
	public String adminselect(String n,String username,String password2,HttpServletRequest req,HttpServletResponse resp){

	
		//System.out.println(email+password);
//		User user=service.selectc(email, MD5Utils.md5(password));
		Admin user = service.selectByName(username, MD5Utils.md5(password2));
        System.out.println("1"+user);
		if(user!=null){
			req.getSession().setAttribute("ADMIN",user);
			return JSON.toJSONString("successs");
			
		}

		System.out.println(n);
		return JSON.toJSONString("false");
	}
}
