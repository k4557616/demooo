package com.zhiyou.controller;

import java.awt.print.PageFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.If;
import org.omg.CosNaming.NamingContextExtPackage.StringNameHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhiyou.model.Course;
import com.zhiyou.model.Speaker;
import com.zhiyou.model.Video;
import com.zhiyou.service.SpeakerService;
import com.zhiyou.service.VideoService;

@Controller
public class SpeakerController {

	@Autowired
	SpeakerService service;
	
	@Autowired 
	VideoService service2;
	//视频播放
	@RequestMapping("speakershow")
	public String usershow(@RequestParam(value = "n", defaultValue = "1") int n, HttpServletRequest req,
			HttpServletResponse rep) {
		
	/*	int id=Integer.valueOf(req.getParameter("ids"));
//		req.setAttribute("videoid", service2.selectById(id));
		req.getSession().setAttribute("videoid",service2.selectById(id));
		Video video=service2.selectById(id);
		System.out.println(video+" "+video.getVideo_url());*/
		
		PageHelper.startPage(n,1);
	    String name = req.getParameter("speaker_name") == null ? "" : req.getParameter("speaker_name");
	    List<Speaker> like = service.selectLikeAll(name);
		PageInfo<Speaker> info=new PageInfo<Speaker>(like,5);
		String name2=name;
		req.setAttribute("name", name);
		req.setAttribute("name2", name2);
		req.setAttribute("info", info);
		
		
		String name11 = req.getParameter("title") == null ? "" : req.getParameter("title");
		   /*String subject_name = req.getParameter("subject_name") == null ? "" : req.getParameter("subject_name");
		   List<Subject> like2 = service2.selectLikeAll(subject_name);	*/
		   List<Video> like2 = service2.selectLikeAll(name);		
			PageInfo<Video> info2=new PageInfo<Video>(like2,5);
			String name22=name;
			req.setAttribute("name11", name11);
			req.setAttribute("name22", name22);
			req.setAttribute("infovideo", info2);
		System.out.println("*********"+like2);
		return "VideoPlayback";
	}
	//SpeakerManagement   主讲人管理
	@RequestMapping("adminspeakershow")
	public String adminusershow2(@RequestParam(value = "n", defaultValue = "1") int n,HttpServletRequest req,
			HttpServletResponse rep) {
		PageHelper.startPage(n,3);
		String name = req.getParameter("speaker_name") == null ? "" : req.getParameter("speaker_name");
		List<Speaker> like = service.selectLikeAll(name);
		PageInfo<Speaker> info=new PageInfo<Speaker>(like,5);
		String name2=name;
		req.setAttribute("info", info);
		req.setAttribute("name", name);
		req.setAttribute("name2", name2);
		System.out.println("*********"+like);
		return "SpeakerManagement";
	}
	
	
	@RequestMapping("speakeradd")
	public String add(Speaker speaker, HttpServletRequest req, HttpServletResponse rep) {
		service.add(speaker);
		System.out.println(speaker);
		return "redirect:adminspeakershow";
	}

	@RequestMapping("speakerdelete")
	public String delete(int id, HttpServletRequest req, HttpServletResponse rep) {
		service.delete(id);
		return "forward:adminspeakershow";
	}

	@RequestMapping("speakerdeleteAll")
	public String delete2(int[] id, HttpServletRequest req, HttpServletResponse rep) {
		service.deleteAll(id);
		/*String[] s=req.getParameterValues("ids");
		System.out.println(s);
		int[] ids=new int[s.length];
		for (int i = 0; i < ids.length; i++) {
			ids[i]=Integer.valueOf(s[i]);
		}*/
		System.out.println(id+"**********************1******");
		return "forward:adminspeakershow";
	}
	//主讲人修改
	@RequestMapping("speakerById")
	public String selectByID(int id, HttpServletRequest req, HttpServletResponse rep) {
	
		req.setAttribute("speaker", service.selectById(id));
		System.out.println("&&&&&&&&&&&&&&&"+id);
		//return "forward:userupdate";
		return "SpeakerUpdate";
	}

	@RequestMapping("speakerupdate")
	public String update(Speaker speaker, HttpServletRequest req, HttpServletResponse rep) {
		service.update(speaker);
		System.out.println(speaker);
		return "redirect:adminspeakershow";
	}
	
	
}
