package com.zhiyou.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhiyou.model.User;
import com.zhiyou.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService service;

	
	@RequestMapping("usershow")
	public  String usershow(@RequestParam(value="n",defaultValue="1")int n,HttpServletRequest req,HttpServletResponse rep){
		
		
		List<User> list=service.select(n);
		PageInfo<User> info=new PageInfo<User>(list,5);
		System.out.println(list);
		req.setAttribute("info", info);
//		PageHelper.startPage(n,2,false);
//		List<User> select = service.select();
//		PageInfo<User> info=new PageInfo<User>(select,3);
//		System.out.println("*********"+info.getList()+" " + info);
	
		req.setAttribute("info", info);
//		req.setAttribute("list", service.select());
		return "usershow";
	}
/*	@RequestMapping("usershow")
	public  String usershow(HttpServletRequest req,HttpServletResponse rep){
//	
		req.setAttribute("list", service.select());
		return "show";
	}*/
	
	@RequestMapping("useradd")
	public  String add(User user,HttpServletRequest req,HttpServletResponse rep){
		System.out.println(user);
		service.add(user);
		//System.out.println(service.add(user));
		return "forward:usershow";
	}
	
	@RequestMapping("userdelete")
	public  String delete(int id,HttpServletRequest req,HttpServletResponse rep){
		service.delete(id);
		return "forward:usershow";
	}
	@RequestMapping("userById")
	public  String selectByID(int id,HttpServletRequest req,HttpServletResponse rep){
		req.setAttribute("user", service.selectById(id));
		return "userupdate";
	}
	
	@RequestMapping("userupdate")
	public  String update(User user,HttpServletRequest req,HttpServletResponse rep){
		service.update(user);
		return "forward:usershow";
	}
}
