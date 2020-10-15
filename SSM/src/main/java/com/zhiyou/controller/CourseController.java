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
import com.zhiyou.model.Course;
import com.zhiyou.model.Subject;
import com.zhiyou.model.User;
import com.zhiyou.service.CourseService;
import com.zhiyou.service.SubjectService;

@Controller
public class CourseController {
	
	
	
	
	@Autowired
	CourseService service;
	
	@Autowired
	SubjectService service2;
	//后台课程展示
	@RequestMapping("courseshow")
	public String usershow(@RequestParam(value = "n", defaultValue = "1") int n, HttpServletRequest req,
			HttpServletResponse rep) {
		
		
		PageHelper.startPage(n,3);
	    String name = req.getParameter("like") == null ? "" : req.getParameter("like");
	    List<Course> like = service.selectLikeAll(name);
	    
		PageInfo<Course> info=new PageInfo<Course>(like,5);
		String name2=name;
		req.setAttribute("name", name);
		req.setAttribute("name2", name2);
		req.setAttribute("info", info);
	  System.out.println("*********"+like);
		return "BackstageCourseCenterShow";
	}
	 //BackstageCourseCenterShow 
	
	@RequestMapping("course/delete.action")
	public String deleteaction(int id,HttpServletRequest req, HttpServletResponse rep) {
	 
	 int i = service.deletes(id);
	 service.delete(id);
	 System.out.println(i+" "+id+"***");
	 if (i>0) {
		return "OK";
	}else {
		return "FAIL";
	}
		
	}
	
      //课程添加   CourseAdd
	@RequestMapping("courseadds")
	public String adds( HttpServletRequest req, HttpServletResponse rep) {
	 List<Subject> list=service2.selectAll();
	 req.setAttribute("subjects", list);
		return "forward:CourseAdd.jsp";
	}
	
	
	@RequestMapping("courseadd")
	public String add(Course course, HttpServletRequest req, HttpServletResponse rep) {
		service.add(course);
		System.out.println(course);
		return "forward:courseshow";
	}

	@RequestMapping("coursedelete")
	public String delete(int id, HttpServletRequest req, HttpServletResponse rep) {
		service.delete(id);
		/*int i = service.deletes(id);
		System.out.println(i);*/
		return "forward:courseshow";
	}

	@RequestMapping("coursedeleteAll")
	public String delete2(int[] id, HttpServletRequest req, HttpServletResponse rep) {
		service.deleteAll(id);
		System.out.println(id+"**********************1******");
		return "forward:courseshow";
	}
	//课程修改
	@RequestMapping("courseById")
	public String selectByID(int id, HttpServletRequest req, HttpServletResponse rep) {
	
		req.setAttribute("course", service.selectById(id));
		 List<Subject> list=service2.selectAll();
		 
		 req.setAttribute("subjects", list);
		System.out.println("&&&&&&&&&&&&&&&"+id);
		//return "forward:userupdate";
		return "CourseUpdeate";
	}

	@RequestMapping("courseupdate")
	public String update(Course course, HttpServletRequest req, HttpServletResponse rep) {
		service.update(course);
		System.out.println(course);
		return "forward:courseshow";
	}
	
}
