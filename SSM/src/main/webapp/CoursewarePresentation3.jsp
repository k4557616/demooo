<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<base href="http://localhost:8080/Voids/">--><base href=".">
 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
    <!-- base href="http://localhost:8080/video/" -->
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
     <script src="jquery/jquery.js">
</script>
<script src="jquery/jquery.validate.min.js">
</script>
<script src="jquery/messages_zh.js">
</script>
    
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="Web前端视频教程,大数据视频教程,HTML5视频教程,UI视频教程,PHP视频教程,java视频教程,python基础教程">
    <meta name="description" content="智游教育在线课程视频,为您提供java,python,HTML5,UI,PHP,大数据等学科经典视频教程在线浏览学习,精细化知识点解析,深入浅出,想学不会都难,智游教育,学习成就梦想！">
    <style type="text/css">
   
    /* .LinkUl li{ float:left; } */

    </style>
    
<link rel="stylesheet" href="./课程展示_files/base.css">
<link rel="stylesheet" href="./课程展示_files/css.css">
<link rel="icon" href="http://localhost:8080/video/favicon.png" type="image/png">
    <title>在线公开课-智游教育|java|大数据|HTML5|python|UI|PHP视频教程</title>
</head>

<body class="w100" style="padding-top: 0px;">
<header>
	<div class="container">
		<span>欢迎来到IT培训的黄埔军校——智游教育！</span>
			
		
			<div id="userBlock" style="float:right">
				<a href="exit">退出</a>
				<!--  onclick="zz()"--> <!-- <a    id="reg_open" >注册</a>  -->
				<!--  onclick="w()" --> 
				 <c:if test="${USER==null }">
				 <a   id="login_open" >登录</a>
				 </c:if>
				 			
				<c:if test="${USER!=null }">
				<a   id="login_open" >${USER.email }</a>
				</c:if>
			</div>

		<a onclick="JavaScript:addFavorite2()"><img src="./课程展示_files/sc.png" draggable="false">加入收藏</a>
		
		<a target="_blank" onclick="ll()"><img src="./课程展示_files/we.png" draggable="false">后台管理</a>
		<a class="color_e4"><img src="./课程展示_files/phone.png" draggable="false"> 0371-88888598　　4006-371-555</a>

	</div>
</header>

    <div id="app">
        <!--banner图-->
        <div class="banner">
        	<img alt="" src="./课程展示_files/banner-1.jpg" width="100%" height="470px;">
        </div>


        <!--面包屑导航-->
        <div class="container mian-nav" id="navDiv">公开课 / ${subjectid.subject_name }</div>
		
		
		
		
		   <div class="classify">
            <div class="container" id="dataContainer"><div class="section"><div class="classifyName"><p class="title title-first">${courseid.course_title }</p></div><div class="kcIntro"><p class="int"><span> ${subjectda.subject_name} </span>
            ${courseid.course_desc }
            </p>
             
            </div>
            <ul>
             <c:forEach items="${selectvideoid }" var="i2"> 
             		<li class="section-main" onclick="getVideo(217)">
             		<div class="thum" style="background-image: url(${i2.image_url})"></div>
             		<p><a href="videotshow?id=${i2.id }">${i2.title }</a></p>
             		<div class="classify-v-info"><span class="count" title="观看次数"><img src="./课程展示_files/count.png" alt="">${i2.play_num }</span>
             		<span class="duration" title="视频时长"><img src="./课程展示_files/player.png" alt="">${i2.time }</span></div>
             		</li>            	
            	   </c:forEach> 
            </ul>
            </div>
             
        </div>
    </div>
    	
			<%-- <c:forEach items="${subject.courseList }" var="course">
				<div class="classify">
          	<div class="container" id="dataContainer"><div class="section"><div class="classifyName"><p class="title title-first">${course.courseTitle }</p></div><div class="kcIntro"><p class="int"><span>课程介绍：</span>
            		${course.courseDesc }
            	</p></div><ul>
            		<c:if test="${course.videooList.size() == 0 }">
            			<li class="section-main" onclick="getVideo()">
	             		<div class="thum" style="background-image: url(); background-repeat:no-repeat; background-size:100% 100%;-moz-background-size:100% 100%;">暂无视频</div>
	             		<p>暂无视频</p>
	             		<div class="classify-v-info"><span class="count" title="观看次数"><img src="./课程展示_files/count.png" alt="">0</span>
	             		<span class="duration" title="视频时长"><img src="./课程展示_files/player.png" alt="">0</span></div>
	             		</li>   
            		</c:if>
            		<c:if test="${course.videooList.size() != 0 }">
            			<c:forEach items="${course.videooList }" var="videoo">
            			<li class="section-main" onclick="getVideo(${videoo.videooId},${course.courseId })">
	             		<div class="thum" style="background-image: url(${videoo.imageUrl }); background-repeat:no-repeat; background-size:100% 100%;-moz-background-size:100% 100%;"></div>
	             		<p>${videoo.title }</p>
	             		<div class="classify-v-info"><span class="count" title="观看次数"><img src="./课程展示_files/count.png" alt="">${videoo.playNum }</span>
	             		<span class="duration" title="视频时长"><img src="./课程展示_files/player.png" alt="">${videoo.time }</span></div>
	             		</li>   
            		</c:forEach>
            		</c:if>
            	</ul></div>
        		</div>
    			</div>
			</c:forEach> --%>
			

    
<!--页脚-->
<footer>
	<ul>
		<li>
			<img src="./课程展示_files/footer_logo.png" alt="" draggable="false">
		</li>
		<li class="mt25">
			<h3>各校区地址</h3>
			<ul>
				<li>总部地址<br>中国-郑州经济技术开发区河南省通信产业园六层</li>
				<li>郑州校区一<br>中国-郑州经济技术开发区第一大街与经北一路</li>
				<li>郑州校区二<br>中国-郑州经济技术开发区第四大街经开人才市场七楼</li>
				<li>郑州校区三<br>中国-郑州经济技术开发区第八大街河南省留学生创业园九层、十层</li>
				<li>西安分校<br>中国-西安莲湖区　联系人：梁老师 13201570801</li>
			</ul>
		</li>
		<li class="mt25">
			<h3>联系我们</h3>
			<ul id="foo_icon">
				<li>中国-郑州经济技术开发区经北三路河南通信产业园六层</li>
				<li>e-mail:zy@zhiyou100.com</li>
				<li>电话:4006-371-555 0371-88888598</li>
				<li class="erwei">
					<br>
					<div>
						<img class="weixin" src="./课程展示_files/a_002.png" alt="" draggable="false">
						<img class="weibo" src="./课程展示_files/a.png" alt="" draggable="false">
					</div>
				</li>
			</ul>
		</li>
	</ul>
	<div class="record">智游教育 © 豫ICP备17000832号-1 　河南智游臻龙教育科技有限公司</div>
</footer>


<!--登录注册弹出框-->
<!--登录注册弹出框-->
 <div class="mask hidden" id="login" >
	<div class="mask_content">
		<div class="mask_content_header">
			<img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/logo.png" alt="" class="ma">
		</div>
		<div class="mask_content_body">
			<form id="loginForm" action="loginuser" ><!-- onsubmit="return qq()" -->
				<h3>用户登录</h3>
				<input id="loginEmail" placeholder="请输入邮箱" name="email" type="email"><i id="loginMsg"></i>
				<input id="loginPassword" placeholder="请输入密码" name="password" type="password"><span id="i"></span>
				<!-- <div id="forget">
					<a href="">忘记密码？</a>
				</div> -->
				<input onclick="return commitLogin()"  value="登　录" type="submit" >   <!-- onsubmit="return eU()"   onclick="return eU()" onclick="return commitLogin()" -->
			</form>
		</div>
		<div class="mask_content_footer">
			<span  id="login_closee" >关　闭</span>
		</div>
	</div>
</div>
<!-- <div class="mask hidden" id="login" >
	<div class="mask_content">
		<div class="mask_content_header">
			<img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/logo.png" alt="" class="ma">
		</div>
		<div class="mask_content_body">
			<form id="loginForma" action="loginuser" >onsubmit="return qq()"
				<h3>用户登录</h3>
				<input id="loginForm" placeholder="请输入邮箱" name="email" type="email"><i id="message"></i>
				<input id="loginPassword" placeholder="请输入密码" name="password" type="password">
				<div id="forget">
					<a href="http://localhost:8080/video/front/user/forgetPassword.action">忘记密码？</a>
				</div>
				<input   value="登　录" type="submit">onclick="return commitLogin()" onclick="return commitLogin()"
			</form>
		</div>
		<div class="mask_content_footer">
			<span  id="login_closee" >关　闭</span>
		</div>
	</div>
</div> -->
<div class="mask hidden" id="reg">
	<div class="mask_content">
		<div class="mask_content_header">
			<img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/logo.png" alt="" class="ma">
		</div>
		<div class="mask_content_body">
			<form id="regForm" action="userRegister" ><!--onsubmit="return e()"  -->
				<h3>新用户注册</h3>
				<input id="regEmail" placeholder="请输入邮箱" name="email" type="email"><span id="emailMsg"></span><i id="passMsg"></i>
				<input id="regPsw" placeholder="请输入密码" name="password" type="password">
				<input id="regPswAgain" placeholder="请再次输入密码" name="psw_again" type="password"><span id="i"></span>
				<!--  <div id="yzm" class="form-inline">
					<input name="yzm" style="width: 45%; display: inline-block;" type="text">
					<div id="v_container" style="width: 45%;height: 40px;float:right;"><canvas id="verifyCanvas" width="100" height="38" style="cursor: pointer;">您的浏览器版本不支持canvas</canvas><canvas id="verifyCanvas" width="100" height="38" style="cursor: pointer;">您的浏览器版本不支持canvas</canvas></div>
				</div>  -->
				<input  value="注　册"  type="submit"><!--  onclick="return commitRegForm()"-->
			</form>
		</div>
		<div class="mask_content_footer">
			<span  id="reg_close">关　闭</span><!-- onclick="q()" -->
		</div>
	</div>
</div>

<!--登录注册弹出框2-->
<div class="mask hidden" id="loginadmin" >
	<div class="mask_content">
		<div class="mask_content_header">
			<img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/logo.png" alt="" class="ma">
		</div>
		<div class="mask_content_body">
			<form id="loginFormbb" action="login" >
				<h3>管理员登录</h3>
				<input id="loginEmailbb" placeholder="请输入用户名" name="username" type="password"><span id="loginMsgA"></span>
				<input id="loginPasswordd" placeholder="请输入密码" name="password2" type="password"><span id="ii"></span>
				<!-- <div id="forget">
					<a href="http://localhost:8080/video/front/user/forgetPassword.action">忘记密码？</a>
				</div> -->
				<input  value="登　录"   onclick="return commitReg()"   type="submit"><!--onsubmit="return eA()"  onclick="return commitLogin()"  -->
			</form>
		</div>
		<div class="mask_content_footer">
			&nbsp;<span  onclick="p()" >关　闭</span><!--  -->
		</div>
	</div>
</div>

<form action="http://localhost:8080/Voids/">
	<input type="text" value="1" id="isLogin">
</form>

    
<script src="./js/jquery-1.js"></script>
<script src="./js/gVerify.js"></script>
<script src="./js/index.js"></script>
  


</div></body>

<script type="text/javascript">


var o=document.getElementById('login');


function l(){
	
	 o.className="mask";
}
function p(){
	 o.className='mask hidden';
	 
}
 
</script>

<script type="text/javascript">

$(function() {
	$("#regEmail").blur(function(){
	    //不为空再校验
	    var emailVal=$("#regEmail").val();
	    //alert(emailVal);
	    // js 判断不相等  不能使用   !""==xxxx
	    if(null != emailVal && ""!=emailVal){
	        var params={"email":emailVal};
	        
	       // alert(params);
	        $.post("ByEmail",params,function(data){
	            if(data=="success"){
	               regIsCommitEmail=true;
	               $("#emailMsg").text("该邮箱可用").css("color","green");
	            }else{
	               regIsCommitEmail=false;
	               $("#emailMsg").text("该邮箱已注册，请直接登录").css("color","red");
	            }
	        });
	    }

	});

	$("#regPswAgain").blur(function(){
	     var pass01= $("#regPsw").val();
	      var pass02= $("#regPswAgain").val();
	      if(null==pass01 || ""==pass01 || null==pass02 || ""==pass02){
	          $("#passMsg").text("密码不能为空").css("color","red");
	          regIsCommitPsw =false;
	      }else{
	          if(pass01!=pass02){
	              regIsCommitPsw=false;
	              $("#passMsg").text("两次密码输入不一致，请重新输入").css("color","red");
	          }else{
	              regIsCommitPsw=true;
	              $("#passMsg").text("");
	          }
	      }
	      
	});

	/*$("#loginout").click(function(){
	     
	     $.get("front/user/loginOut.action",null,function(){
	          $("#regBlock").css("display","block");
	          $("#userBlock").css("display","none");
	     });

	});*/

	var regIsCommitEmail=false;
	var regIsCommitPsw=false;
	var verifyCode;
	function commitRegForm(){
	     
	     var code =$("input[name='yzm']").val();
	     //alert(code);
	     //alert(regIsCommitEmail+","+regIsCommitPsw);
	         if(regIsCommitEmail && regIsCommitPsw && verifyCode.validate(code)){
	              //用js提交表单
	             // $("#regForm").commit();
	             $.ajax({
	              
	                url:"front/user/insertUser.action",
	                data:$("#regForm").serialize(),
	                type:"POST",
	                success:function(data){
	                   if(data=='success'){
	                     /* //注册框消失
	                      $("#reg").addClass("hidden");
	                      
	                      $("#account").text($("#regEmail").val());
	                      //将注册的user信息展示
	                      $("#regBlock").css("display","none");
	                      $("#userBlock").css("display","block");*/
						   document.location.reload();
	                      
	                   }
	                },
	                error:function(){
	                   alert("联系管理员");
	                }
	             
	             });
	         
	         return false;
	         
	     }else{
	        return false;
	     }
	      
	}
})


/* alert("ni"); */
var u=document.getElementById('loginu');

var o=document.getElementById('loginadmin');
var x=document.getElementById('reg');

var d=document.getElementById('login');
var r=document.getElementById('loginw');

function ro(){
	
	 alert("你还没有登录，请登录");
	 /* r.className="mask"; */
	 
}

function dd(){
	 d.className='mask hidden';
	 
}

function rr(){
	 r.className='mask hidden';
	 
}

function w(){
	
	 u.className="mask";
}
function t(){
	 u.className='mask hidden';
	 
 }

function ll(){
	
	 o.className="mask";
}
function p(){
	 o.className='mask hidden';
	 
}

 function zz(){
	 x.className="mask";
 }
 function q(){
	 x.className="mask hidden";
 }

</script>


<!-- <script type="text/javascript">
$().ready(function () { //jquery预备函数,执行
	$("form").validate({
		rules:{
			email:{
				required:true,
				email:true
			},
			password:{
				required:true,
				minlength:8
			},
			psw_again:{
				required:true,
				equalTo:"#password"
			}
		},
		/*对应规则的提示信息*/
		messages:{
			email:{
				required:"请输入邮箱地址",
				email:"邮箱格式错误xxx@xxx"
			},
			password:{
				required:"请输入密码",
				minlength:"密码最小为8位"
			},
			psw_again:{
				required:"请确认密码",
				equalTo:"#password原密码不相同"
			}
		}
	});
})
</script> -->

 <script type="text/javascript">
   	var flag=true;
$("#email").blur(function(){
	/* $.post()
	$.get() */
	$.ajax({
		url:"userRegister",/*请求的地址是是什么*/
		data:{//请求服务器的时候传递的数据集合
			email:$("#email").val() //获得输入框的值，key:value
		},//回调函数
		success:function(data){//请求成功后执行的方法
			if(data=="1"){
				$("#i").text("用户名可以使用");
				 flag=true;
			}else {
				$("#i").text("用户名不受欢迎");
				 flag=false;
			}
		}
	})
})
function e(){
	return flag;
}

</script> 

<script type="text/javascript">

function commitLogin(){
	/* console.log(123) */
   var email =$("#loginEmail").val();
   var password =$("#loginPassword").val();
  
  
   if(null!=email && email!="" && null!=password && password!=""){
	  
	   var params=$("#loginForm").serialize();
        console.log(params)
       // alert(params);
        // post要小写
        $.post("userSelect",params,function(data){
        // alert(data);
      /*   var json = eval(data) */
       /*  console.log(json.email) */
                 if(data=='success'){
                      document.location.reload();
                      //document.getElementById('loginForm').contentWindow.location.reload(true);
                   }
                 else{
                	 $("#ii").text("账号或密码错误");
                 }
        },"json");
        
        return false;
   }
   
   return false;
}


function commitReg(){
	/* console.log(123) */
	
   var username =$("#loginEmailbb").val();
   var password2 =$("#loginPasswordd").val();
   
  
   if(null!=username && username!="" && null!=password2 && password2!=""){
	   
	   var params=$("#loginFormbb").serialize();
        console.log(params);
       // alert(params);
       // alert(params);
        // post要小写
        $.post("adminSelect",params,function(data){
        // alert(data);
      /*   var json = eval(data) */
       /*  console.log(json.email) */
                 if(data=='successs'){
                	 window.location.href='courseshow';
                      /* document.location.reload(); */
                      //document.getElementById('loginForm').contentWindow.location.reload(true);
                   }
                 else{
                	 $("#ii").text("账号或密码错误");
                 }
        },"json");
        
        return false;
   }
   
   return false;
}




var ad=document.getElementById("loginForma");


 $().ready(function () {
	console.log(ad);
	 $(ad).validate({
		 
		rules:{
			email:{
				required:true
			},
			password:{
				required:true
			}
		},
		messages:{
			email:{
				required:"请填写邮箱"
			},
			password:{
				required:"请填写密码"
			}
		}
		 
	});
})
 
 var add=document.getElementById('loginFormbb');

 $().ready(function () {
	$(add).validate({
		
		rules:{
			username:{
				required:true
			},
			password2:{
				required:true
			}
		},
		messages:{
			username:{
				required:"请填写用户名"
			},
			password2:{
				required:"请填写密码"
			}
		}
		
	});
})
 
</script>

</html>