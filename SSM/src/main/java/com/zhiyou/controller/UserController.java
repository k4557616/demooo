package com.zhiyou.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.Timestamp;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.jni.Time;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.util.IOUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sun.org.apache.xalan.internal.xsltc.compiler.sym;
import com.zhiyou.model.Course;
import com.zhiyou.model.Subject;
import com.zhiyou.model.User;
import com.zhiyou.model.Video;
import com.zhiyou.service.CourseService;
import com.zhiyou.service.SpeakerService;
import com.zhiyou.service.SubjectService;
import com.zhiyou.service.UserService;
import com.zhiyou.service.VideoService;
import com.zhiyou.util.MD5Utils;

@Controller
public class UserController {

	@Autowired
	UserService service;
	
	@Autowired
	VideoService service2;
	
	@Autowired 
	SpeakerService  service3;
	
	@Autowired 
	CourseService  service4;
	
	@Autowired
	SubjectService service22;

	
	//用户注册
	@RequestMapping("userRegister")
	public String add12(User user, HttpServletRequest req, HttpServletResponse resp) {
		
//		user.setPassword(MD5Utils.md5(""));
//		user.setAddress();
		if (user.getPassword()!=""&&user.getPassword()!=null) {
			service.addRegister(user);
		}
		/*String email = req.getParameter("email") == null ? "" : req.getParameter("email");
		System.out.println(email+" "+ user );
		req.setAttribute(email, service.selectName(email));*/
		
		return "index";
	}
	//用户注册
	@RequestMapping("ByEmail")
	@ResponseBody
	public String ByEmail(String email, HttpServletRequest req, HttpServletResponse resp) {
		int i = service.selectName(email);
		System.out.println("email="+email+"i="+i);
		if(i == 1){
			System.out.println(i+"?");
//			return JSONObject.toJSONString("success");
			return JSONObject.toJSONString("success");
		}
		
		return JSONObject.toJSONString("false");
	}
	
	// 用户登录
	@RequestMapping("loginuser")
	public String LoginConfig(String email, String password, HttpServletRequest req, HttpServletResponse resp) {
		User user = service.selectByName(email, MD5Utils.md5(password));//MD5Utils.md5(password)
		System.out.println("********************"+user);
//		req.setAttribute("user", service.selectAll());
//		int id=Integer.valueOf(req.getParameter("id"));
//		req.setAttribute("user", service.selectById(id));
		req.getSession().setAttribute("USER", user);
	/*	User u=new User();
		u.setEmail(email);
		u.setPassword(MD5Utils.md5(password));
		User user=ser.selectByEmail(u);
		int i=0;
		if(user==null){
			i=1;
		}
		resp.getWriter().write(String.valueOf(i));*/
		
		return user == null ? "index" : "forward:sublogin";
	}

	// 用户登录
	@RequestMapping("loginuseryan")
	public String LoginConfigyan(String email, String password, HttpServletRequest req, HttpServletResponse resp) {
		User user = service.selectByName(email, password);
		System.out.println("********************"+user);
		req.setAttribute("email", email);
		req.setAttribute("password", password);
		System.out.println(user);
		System.out.println(email+" "+password);
		if (user==null) {
			req.getSession().setAttribute("USER", user);
			return JSON.toJSONString("false");
		}
		req.getSession().setAttribute("USER", user);
		return JSON.toJSONString("success");
	}
	
	
	
	@ResponseBody
	@RequestMapping("userSelect")
	public String select(String n,String email,String password,HttpServletRequest req,HttpServletResponse resp){

	
		//System.out.println(email+password);
//		User user=service.selectc(email, MD5Utils.md5(password));
		User user = service.selectByName(email, MD5Utils.md5(password));
        System.out.println("1"+user);
		if(user!=null){
			req.getSession().setAttribute("USER",user);
			return JSON.toJSONString("success");
		}

		System.out.println(n);
		return JSON.toJSONString("false");
	}
	

	
	
	// 用户登录
		@RequestMapping("loginww")
		public String LoginConfig3(String email, String password, HttpServletRequest req, HttpServletResponse resp) {
			User user = service.selectByName(email, password);
			System.out.println("********************"+user);
//			req.setAttribute("user", service.selectAll());
//			int id=Integer.valueOf(req.getParameter("id"));
//			req.setAttribute("user", service.selectById(id));
			req.getSession().setAttribute("USER", user);
			
			return user == null ? "index" : "forward:usershow22";
		}
	
/*	@RequestMapping("useruploas")
	public String upload(MultipartFile image_file,int id, HttpServletRequest req, HttpServletResponse rep)  {
		try {
			image_file.transferTo(new File("D:/xi/SSM/src/main/webapp/修改头像_files/" +image_file.getOriginalFilename()));
			System.out.println(image_file.getContentType());
			System.out.println(image_file.getSize());
			System.out.println(image_file.getOriginalFilename());
		//http://localhost:8080/SSM/
			String img="/修改头像_files/"+image_file.getOriginalFilename() ;
			service.updateT(img, id);
			req.setAttribute("imagename",img);
			System.out.println(img+"********************************************");
			
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		req.getSession().setAttribute("USER", ser.selectByID(user.getId()));
		
		
//		String img="D:/yun/xiangwu/java2012/SSM/src/main/webapp/修改头像_files/"+image_file.getOriginalFilename();
		return "forward:userbyidT";
	}*/
	
	
	//修改头像2
	@RequestMapping("useruploas")
	public String upload2(MultipartFile image_file,int id, HttpServletRequest req, HttpServletResponse rep)  {
		try {
//			image_file.transferTo(new File("D:/xi/SSM/src/main/webapp/修改头像_files/" +image_file.getOriginalFilename()));
			InputStream in =image_file.getInputStream();
			
			FileOutputStream out =new FileOutputStream("D:/xi/video_img/"+image_file.getOriginalFilename());
			org.apache.commons.io.IOUtils.copy(in, out);
			System.out.println(image_file.getContentType());
			System.out.println(image_file.getSize());
			System.out.println(image_file.getOriginalFilename());
		//http://localhost:8080/SSM/
//			String img="/修改头像_files/"+image_file.getOriginalFilename() ;
			String img="/img/"+image_file.getOriginalFilename() ; //     /img/5c561993018e50a68754d9b9a7b34c10.jpeg 
			service.updateT(img, id);
			req.setAttribute("imagename",img);
			System.out.println(img+"***********************************");
			
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		req.getSession().setAttribute("USER", ser.selectByID(user.getId()));
		
		
//		String img="D:/yun/xiangwu/java2012/SSM/src/main/webapp/修改头像_files/"+image_file.getOriginalFilename();
		return "forward:userbyidT";
	}
	
	//拦截图片格式 // File file不能使用 MultipartFile多部分文件
/*		@RequestMapping("upload1")
		public ModelAndView h(MultipartFile image_file,HttpServletRequest req,HttpServletResponse resp){
			ModelAndView modelAndView=new ModelAndView();
			req.getSession().setAttribute("FILE", image_file);
			modelAndView.setViewName("forward:useruploas");
			return modelAndView;
		}*/
		
		@RequestMapping("upload2")
		public String h(MultipartFile image_file,HttpServletRequest req,HttpServletResponse resp){
			
			req.getSession().setAttribute("FILE", image_file);
			return "forward:useruploas";
		}
	
	//个人中心
	@RequestMapping("userbyidshow")
	public String selectByID22(int id, HttpServletRequest req, HttpServletResponse rep) {
		User userid=service.selectById(id);
		req.setAttribute("user",userid );
		System.out.println(id);
		String iString="."+userid.getImgUrl();
		req.setAttribute("userimg2", userid.getImgUrl());
//		req.setAttribute("userimg2", iString);
		return "personalcentre";
	}
	
	@RequestMapping("usershow2")
	public String usershow2(@RequestParam(value = "n", defaultValue = "1") int n, HttpServletRequest req,
			HttpServletResponse rep) {
		/*int page = req.getParameter("page") == null ? 1 : Integer.valueOf(req.getParameter("page"));
		String name = req.getParameter("customera") == null ? "" : req.getParameter("customera");
		List<Customer> list = service.selectAllMH(name, page);
		String name2 = name;
		req.setAttribute("count", service.NameSum(name));
		req.setAttribute("customer", name);
		req.setAttribute("customer2", name2);
		req.setAttribute("page2", page);
		req.setAttribute("list", list);*/
		
		PageHelper.startPage(n,3);
	    String name = req.getParameter("like") == null ? "" : req.getParameter("like");
//		List<User> list=service.select();
	    List<User> like = service.selectLikeAll(name);		
		PageInfo<User> info=new PageInfo<User>(like,5);
//		req.setAttribute("like",info.getPageNum());
//		System.out.println(info.getPageNum());
		String name2=name;
		req.setAttribute("name", name);
		req.setAttribute("name2", name2);
		req.setAttribute("info", info);
		System.out.println("*********"+like);
		return "usershow";
	}
	//课程展示2 CoursewarePresentation
	@RequestMapping("usershow22")
	public String usershow3(@RequestParam(value = "n", defaultValue = "1") int n, HttpServletRequest req,
			HttpServletResponse rep) {
		
		PageHelper.startPage(n,3);
	    String name = req.getParameter("subject_name") == null ? "" : req.getParameter("subject_name");
//		List<User> list=service.select();
	   List<Video> like = service2.selectSubject(name);	
		PageInfo<Video> info=new PageInfo<Video>(like,5);
//		req.setAttribute("like",info.getPageNum());
//		System.out.println(info.getPageNum());
		String name2=name;
		
		req.setAttribute("name2", name2);
		req.setAttribute("subject", service22.selectAll());
		req.setAttribute("speaker", service3.selectAll());
		req.setAttribute("course" , service4.selectAll());
		req.setAttribute("info", info);
		System.out.println("*********"+like);
		List<Video> list = service2.selectweb();
		List<Video> selectda = service2.selectda();
		List<Video> selectPhp = service2.selectPhp();
		List<Video> selectui = service2.selectui();
		List<Video> selectJava = service2.selectJava();
		List<Video> selectPython = service2.selectPython();
		for (Video video : list) {
			System.out.println(video);
			System.out.println(video.getId());
		}
		
		req.setAttribute("web", list);
		req.setAttribute("da", selectda);
		req.setAttribute("php", selectPhp);
		req.setAttribute("ui", selectui);
		req.setAttribute("java", selectJava);
		req.setAttribute("python", selectPython);
		
		Course course=null;
		Subject subject=null;
		Course course2=null;
		Subject subject2=null;
		Course course3=null;
		Subject subject3=null;
		Course course4=null;
		Subject subject4=null;
		Course course5=null;
		Subject subject5=null;
		Course course6=null;
		Subject subject6=null;
		for (Video video : list) {
			  course = video.getCourse();
			 subject=video.getSubject();
		}
		for (Video video : selectda) {
			course2=video.getCourse();
			subject2=video.getSubject();
		}
		for (Video video : selectPhp) {
			course3=video.getCourse();
			subject3=video.getSubject();
		}
        for (Video video : selectui) {
        	course4=video.getCourse();
			subject4=video.getSubject();
		}
		for (Video video : selectPython) {
			course5=video.getCourse();
			subject5=video.getSubject();
		}
         for (Video video : selectJava) {
        	 course6=video.getCourse();
 			subject6=video.getSubject();
		}
		
		req.setAttribute("courseid", course);
		req.setAttribute("subjectid", subject);
		
		req.setAttribute("courseda", course2);
		req.setAttribute("subjectda", subject2);
		req.setAttribute("coursephp", course3);
		req.setAttribute("subjectphp", subject3);
		req.setAttribute("courseui", course4);
		req.setAttribute("subjectui", subject4);
		req.setAttribute("coursepython", course5);
		req.setAttribute("subjectpython", subject5);
		req.setAttribute("coursejava", course6);
		req.setAttribute("subjectjava", subject6);
		
		return "CoursewarePresentation2";
	}
	
	
	//课程展示2
	@RequestMapping("Javashow22")
	public String Javashow3(@RequestParam(value = "n", defaultValue = "1") int n, HttpServletRequest req,
			HttpServletResponse rep) {
		
		PageHelper.startPage(n,3);
	    String name = req.getParameter("subject_name") == null ? "" : req.getParameter("subject_name");
//		List<User> list=service.select();
	   List<Video> like = service2.selectSubject(name);	
		PageInfo<Video> info=new PageInfo<Video>(like,5);
//		req.setAttribute("like",info.getPageNum());
//		System.out.println(info.getPageNum());
		String name2=name;
		
		req.setAttribute("name2", name2);
		req.setAttribute("subject", service22.selectAll());
		req.setAttribute("speaker", service3.selectAll());
		req.setAttribute("course" , service4.selectAll());
		req.setAttribute("info", info);
		//System.out.println("*********"+like);
		List<Video> list = service2.selectweb();
		req.setAttribute("web", list);
		Course course=null;
		Subject subject=null;
		for (Video video : list) {
			//System.out.println(video);
			  course = video.getCourse();
			  System.out.println(course);
			// subject=video.getSubject();
			// req.setAttribute("courseid", course2);
		}
		req.setAttribute("courseid", course);
		System.out.println(course.getCourse_title()+"())))))))))))))))))))))))))))(((((((((((((((((((((((((((((((((((((");
		System.out.println("hhhhhh");
		List<Course> selectAll = service4.selectAll();
	    
		System.out.println(course.getCourse_title()+"nihao");
		//req.setAttribute("subjectid", subject);
		for (Video video : like) {
			//System.out.println(video);
			
		}
		
		return "CoursewarePresentation2";
	}
	

	@RequestMapping("useradd")
	public String add(User user, HttpServletRequest req, HttpServletResponse rep) {
		user.setPassword(MD5Utils.md5(user.getPassword()));
		service.add(user);
//		user.setId(req.getSession().getAttribute("").getId());
		System.out.println(user);
		return "forward:usershow";
	}

	@RequestMapping("userdelete")
	public String delete(int user_id, HttpServletRequest req, HttpServletResponse rep) {
		service.delete(user_id);
		return "forward:usershow";
	}

	@RequestMapping("userupdateZ")
	public String update2(User user, HttpServletRequest req, HttpServletResponse rep) {
		String address=req.getParameter("prov")+req.getParameter("city");
		user.setAddress(address);
		service.updateZ(user);
		System.out.println("***************"+user);
		
		return "forward:personalcentre.jsp";
	}
	//修改资料  UpdateInformation 
	@RequestMapping("userbyid")
	public String selectByID(int id, HttpServletRequest req, HttpServletResponse rep) {
		User userid=service.selectById(id);
		req.setAttribute("user",userid );
		System.out.println(id);
		
		String iString="."+userid.getImgUrl();
//		req.setAttribute("userimg2", iString);
		req.setAttribute("selectsex", userid.getSex());
		req.setAttribute("userimg2", userid.getImgUrl());
	/*	user.setId(((User) req.getSession().getAttribute("USER")).getId());
		ser.update(user);
		req.getSession().setAttribute("USER", ser.selectByID(user.getId()));*/
		
		return "UpdateInformation";
	}
	//修改头像 UpdateImage
	@RequestMapping("userbyidT")
	public String selectByID23(int id, HttpServletRequest req, HttpServletResponse rep) {
		
		User userid=service.selectById(id);
		req.setAttribute("user", service.selectById(id));
		String iString="."+userid.getImgUrl();
		req.setAttribute("userimg", userid.getImgUrl());
//		req.setAttribute("userimg2", iString);
		req.setAttribute("userimg2", userid.getImgUrl());
		System.out.println(userid.getImgUrl()+"***********%%%%%%%%%%%%%%%%%%%%%%%%%************");
		
		//return "forward:userupdate";
		return "UpdateImage";
	}

	//修改密码 UpdatePassword
	@RequestMapping("userById")
	public String selectByID2(int id, HttpServletRequest req, HttpServletResponse rep)  {
		User userid=service.selectById(id);
		System.out.println(userid.getPassword());
		
//		String bopa=userid.getPassword().equals(oldpassword)==true?"yes":"no";
		/*if (userid.getPassword().equals(name)) {
			return JSONObject.toJSONString("OK");
		}*/
		
		req.setAttribute("user",userid );
		
		String iString="."+userid.getImgUrl();
		//req.setAttribute("oldpassword", userid.getPassword());
		req.setAttribute("userimg2", userid.getImgUrl()); 
		
		return "UpdatePassword";
	}
	//修改密码2
	@RequestMapping("userById2")
	public void selectByID232(int id,String oldpassword, HttpServletRequest req, HttpServletResponse rep) throws IOException {
//		return JSONObject.toJSONString("success");
//		return JSON.toJSONString("success");
		
		int i = service.selectByPassword(MD5Utils.md5(oldpassword),id);
		System.out.println("password="+oldpassword+"?i="+i+"?id="+id+"md5="+MD5Utils.md5(oldpassword));
		
		/*if(i == 1){
			return JSONObject.toJSONString("success");
		}*/
		
		rep.getWriter().write(String.valueOf(i));
		
	}
	
	//用户注册
/*	@RequestMapping("userById22")
	@ResponseBody
	public String ByEmail32(String oldpassword, HttpServletRequest req, HttpServletResponse resp) {
		int i = service.selectByPassword(oldpassword);
		
		if(i == 1){
			return JSONObject.toJSONString("success");
		}
		return "false";
	}*/
	
	@RequestMapping("userupdateM")
	public String update(String password ,int id, HttpServletRequest req, HttpServletResponse rep) {
		service.updateM(MD5Utils.md5(password), id);
		System.out.println(password+"  "+id);
		return "forward:userbyidshow";
	}
	@RequestMapping("exit")
	public String exit(HttpServletRequest req, HttpServletResponse resp)  {
		req.getSession().invalidate();
		
		return "index";
	}
	
	
	
	
	
	
}
