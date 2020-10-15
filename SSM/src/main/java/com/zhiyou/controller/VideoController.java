package com.zhiyou.controller;

import java.io.IOException;
import java.util.Iterator;
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
import com.zhiyou.model.Speaker;
import com.zhiyou.model.Subject;
import com.zhiyou.model.User;
import com.zhiyou.model.Video;
import com.zhiyou.service.CourseService;
import com.zhiyou.service.SpeakerService;
import com.zhiyou.service.SubjectService;
import com.zhiyou.service.VideoService;

@Controller
public class VideoController {
	
	@Autowired
	VideoService service;
	
	@Autowired
	SubjectService service2;
	
	@Autowired 
	SpeakerService  service3;
	
	@Autowired 
	CourseService  service4;
	
	
   //璇句欢灞曠ず
	@RequestMapping("videoshow")
	public String usershow(@RequestParam(value = "n", defaultValue = "1") int n,HttpServletRequest req,
			HttpServletResponse rep) {
		PageHelper.startPage(n,3);
	
		
	   String name = req.getParameter("title") == null ? "" : req.getParameter("title");
	   /*String subject_name = req.getParameter("subject_name") == null ? "" : req.getParameter("subject_name");
	   List<Subject> like2 = service2.selectLikeAll(subject_name);	*/
	   List<Video> like = service.selectLikeAll(name);		
		PageInfo<Video> info=new PageInfo<Video>(like,5);
		String name2=name;
		/*int id=Integer.valueOf(req.getParameter("ids"));
		req.setAttribute("videoid", service.selectById(id));*/
		
		req.setAttribute("name", name);
		req.setAttribute("name2", name2);
		req.setAttribute("info", info);
		System.out.println("*********"+like);
		return "CoursewarePresentation";
	}
	//瑙嗛绠＄悊 VideoManagement 
	@RequestMapping("adminvideoshow")
	public String adminusershow(@RequestParam(value = "n", defaultValue = "1") int n,HttpServletRequest req,
			HttpServletResponse rep) {
		PageHelper.startPage(n,3);
	  
	   String subject_name = req.getParameter("subject_name") == null ? "" : req.getParameter("subject_name");
	   String speaker_name = req.getParameter("speaker_name") == null ? "" : req.getParameter("speaker_name");
	   String title = req.getParameter("title") == null ? "" : req.getParameter("title");
	   //List<Video> like = service.selectAll();
	   List<Video> like2=service.selectLikeSS(speaker_name,subject_name,title);
	   //req.setAttribute("like", like);
		PageInfo<Video> info=new PageInfo<Video>(like2,5);
		String title2=title;
		String subject_name2=subject_name;
		String speaker_name2=speaker_name;
		req.setAttribute("title", title);
		req.setAttribute("title2", title2);
		req.setAttribute("subject_name2", subject_name2);
		req.setAttribute("speaker_name2", speaker_name2);
		req.setAttribute("subject", service2.selectAll());
		req.setAttribute("speaker", service3.selectAll());
		req.setAttribute("course" , service4.selectAll());
		for (Video video : like2) {
			System.out.println(video);
			
			System.out.println(video.getId());
		}
		System.out.println(subject_name+" "+speaker_name2+" "+title+" "+"******");
		
		/*for (Video video : like) {
			System.out.println(video);
		}*/
		/*String name2=name;
		req.setAttribute("name", name);
		req.setAttribute("name2", name2);*/
		
		req.setAttribute("info", info);
		//req.setAttribute("videolist", service.selectAllMH(subject_name, speaker_name, page));

//		req.setAttribute("count",service.NameSum(subject_name, speaker_name) );
		//System.out.println("*********"+like);
		return "VideoManagement";
	}
	
	@RequestMapping("videodeleteAll")
	public String delete2(int[] id, HttpServletRequest req, HttpServletResponse rep) {
		
		
		service.deleteAll(id);
		System.out.println(id+"**********************1******");
		return "forward:adminvideoshow";
	}
	//瑙嗛鎾斁3
	@RequestMapping("videotshow")
	public String dshow(int id,User user, HttpServletRequest req, HttpServletResponse rep) {
		
		Video selectBYID = service.selectBYID(id);
	System.out.println(selectBYID);
		System.out.println(id+"****************************");
		//Video(id=224, title=React蹇�熶綋楠�-缁勪欢, detail=浠嬬粛浜哛eact鐨勫墠鐢熶粖涓栵紝璁╁悓瀛︿滑浜嗚В搴撴枃浠朵笅杞藉拰鏁翠綋鐨凴eact椤圭洰缁撴瀯鍙奟eact搴撴渶绠�鍗曠殑浣跨敤銆�, time=907, speaker_id=8, course_id=8, 
		//video_url=https://m.bilibili.com/video/BV1Mb411H76X?p=2, image_url=./videoimg/6.jpg, play_num=191, 
		//speaker=Speaker(speaker_id=8, speaker_name=鍟�8, speaker_desc=鍦烘櫙绉�椤圭洰鏄竴涓墜鏈洪〉闈€�佹湰閮ㄥ垎浠嬬粛浜嗗搷搴斿紡寮�鍙戠幆澧冦�乿iewport鍦ㄥ搷搴斿紡寮�鍙戜腑鐨勫簲鐢ㄣ�乿w/vh绛夊搷搴斿紡CSS鍗曚綅鐨勪娇鐢ㄣ�丆SS鍑芥暟calc()鍦ㄥ崟浣嶆贩鍚堣绠楁椂鐨勪娇鐢ㄣ��, speaker_job=8, head_img_url=./speakerimg/9.jpg), 
		//course=Course(id=224, course_title=姣忓ぉ20鍒嗛挓杞绘澗鍏ラ棬React, course_desc=閫傚悎鏈変竴瀹欻TML+JS鍩虹銆佹兂瀛︿範React鐨勫悓瀛︺�傛湰璇剧▼寰簭娓愯繘銆佹祬鏄炬槗鎳傦紝闈炲父閫傚悎React鍏ラ棬瀛︿範銆傛兂杩涗竴姝ュ涔犲拰浣跨敤React杩涜寮�鍙戠殑鍚屽鍙互鎶ュ悕鏅烘父鍓嶇寮�鍙戣绋嬨��, subject_id=1, subject=null), 
		//subject=Subject(id=224, subject_name=WEB鍓嶇))
		
	
//		service.update();
		
		if (selectBYID.getPlay_num()==null) {
			service.updatePlay(1, id);
		}else {
			service.updatePlay(selectBYID.getPlay_num()+1, id);
		}
		System.out.println(selectBYID.getPlay_num());
//		service.updatePlay(selectBYID.getPlay_num()+1, id);
		req.setAttribute("infoo", selectBYID);

		req.setAttribute("course", selectBYID.getCourse());
		List<Video> selectSpeaker = service.selectSpeaker();
		for (Video video2 : selectSpeaker) {
		}
		req.setAttribute("selectSpeaker", selectSpeaker);
		return "forward:VideoPlayback3.jsp";
	}
	//瑙嗛娣诲姞
	@RequestMapping("videoaddshow")
	public String addd( HttpServletRequest req, HttpServletResponse rep) {
		 List<Course> sc = service4.selectAll();
		for (Course course : sc) {
			System.out.println(course);
			System.out.println(course.getSubject().getSubject_name());
			
		}
		System.out.println("dd");
		req.setAttribute("subject", service2.selectAll());
		req.setAttribute("speaker", service3.selectAll());
		req.setAttribute("course" , service4.selectAll());
		return "forward:VideoAdd.jsp";
	}
	
	@RequestMapping("videoadd")
	public String add2(Video video, HttpServletRequest req, HttpServletResponse rep) {
		service.add(video);
		//service2.adds(subject);
		//service3.adds(speaker);
		return "redirect:adminvideoshow";
	}
	
	//瑙嗛淇敼
	@RequestMapping("videoById")
	public String selectByID(int id, HttpServletRequest req, HttpServletResponse rep) {
	
		req.setAttribute("video", service.selectById(id));
		req.setAttribute("subject", service2.selectAll());
		req.setAttribute("speaker", service3.selectAll());
		req.setAttribute("course" , service4.selectAll());
		System.out.println("&&&&&&&&&&&&&&&"+id);
		//return "forward:userupdate";
		return "VideoUpdate";
	}


	
	
	@RequestMapping("videoupdate")
	public String update32(Video video, HttpServletRequest req, HttpServletResponse rep) {
		
		System.out.println("***********************||||||||||||"+video+"||||||||************************");
		service.update(video);
		return "redirect:adminvideoshow";
		//
	}
	
	
	@RequestMapping("videodelete")
	public String delete(int id, HttpServletRequest req, HttpServletResponse rep) {
		service.delete(id);
		return "forward:adminvideoshow";
	}
	
	
	//播放次数加1
	@RequestMapping("a1ddPlayNum")
	public void getVideoList(String id, HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		service.addPlayNum(Integer.valueOf(id));
		System.out.println("1"+id);
		resp.getWriter().write("success");
	}
}
