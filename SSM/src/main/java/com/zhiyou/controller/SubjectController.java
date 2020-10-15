package com.zhiyou.controller;

import java.io.IOException;
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
import com.zhiyou.model.Video;
import com.zhiyou.service.SubjectService;
import com.zhiyou.service.VideoService;

@Controller
public class SubjectController {
	
	@Autowired
	SubjectService service;
	

	@Autowired
	VideoService VideoService;
	
	/*@RequestMapping("sublogin")
	public String selectByID22( HttpServletRequest req, HttpServletResponse rep) {
	System.out.println("a");
	
	
		return "show";
	}*/

	@RequestMapping("sublogin")
	public String usershow2(@RequestParam(value = "n", defaultValue = "1") int n,HttpServletRequest req,
			HttpServletResponse rep) {
		PageHelper.startPage(n,4);
	   String name = req.getParameter("subject_name") == null ? "" : req.getParameter("subject_name");
	   List<Subject> like = service.selectLikeAll(name);		
		PageInfo<Subject> info=new PageInfo<Subject>(like,5);
		String name2=name;
		req.setAttribute("name", name);
		req.setAttribute("name2", name2);
		req.setAttribute("info", info);
		System.out.println("*********"+like);
		return "show";
	}
	//subjectCourseAndVideoo?subjectId=6
	
	
/*	@RequestMapping("subjectCourseAndVideoo")
	public String subjectCourseAndVideoo(Integer id,HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		//获取课程名称
		Subject subjectN = service.selectById2(id);
		System.out.println(subjectN);
		//获取该学科所有课程和视频
      	List<Subject> cavList = service.selectCourseAndVideo(1);
		 for (Subject subject : cavList) {
			System.out.println(subject);
		}
//		 CoursewarePresentation3
		req.setAttribute("subjectN", subjectN);
		req.setAttribute("cavList", cavList);
		return "show";
	}*/
	
	@RequestMapping("subjectCourseAndVideoo")
	public String subjectCourseAndVideoo(Integer id,HttpServletRequest req, HttpServletResponse resp) throws IOException {
		List<Subject> is = service.selectid(id);
		
		//获取课程名称
		//Subject subjectN = service.selectById2(id);
		List<Video> selectvideoid = VideoService.selectvideoid(id);
		Course course=null;
		Subject subject=null;
		for (Video video : selectvideoid) {
			System.out.println(video);
			  course = video.getCourse();
			   subject = video.getSubject();
		}
		req.setAttribute("courseid", course);
		req.setAttribute("subjectid", subject);
		req.setAttribute("selectvideoid", selectvideoid);
		return "CoursewarePresentation3";
	}
}
