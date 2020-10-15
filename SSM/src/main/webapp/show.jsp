<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<base href="http://localhost:8080/Voids/">--><base href=".">
 <script src="jquery/jquery.js">
</script>
<script src="jquery/jquery.validate.min.js">
</script>
<script src="jquery/messages_zh.js">
</script>

    <!-- base href="http://localhost:8080/video/" -->
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="Web前端视频教程,大数据视频教程,HTML5视频教程,UI视频教程,PHP视频教程,java视频教程,python基础教程">
    <meta name="description" content="智游教育在线课程视频,为您提供java,python,HTML5,UI,PHP,大数据等学科经典视频教程在线浏览学习,精细化知识点解析,深入浅出,想学不会都难,智游教育,学习成就梦想！">
    
<link rel="stylesheet" href="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/base.css">
<link rel="stylesheet" href="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/css.css">
<link rel="icon" href="http://localhost:8080/Voids/static/z/favicon.png" type="image/png">
    <title>在线公开课-智游教育|java|大数据|HTML5|python|UI|PHP视频教程</title>
<script type="text/javascript">
/* function qq(){
	var code=$("#email").val();
	var pass=$("#password").val();
	if(code=""||pass=""){
		$("#massage").text("账号和密码不能为空!");
			return false;	
	}
	return true;
} */
</script>

</head>

<body class="w100" style="padding-top: 0px;">
    



<header>
	<div class="container">
		<span>欢迎来到IT培训的黄埔军校——智游教育！</span>

			<div id="userBlock" style="float:right">
				
				 <a href="exit">退出</a>
				 <a href="userbyidshow?id=${USER.id }" >${USER.email }</a>
				<a id="account" href="usershow22">课程展示2</a>
				
				<a id="account" href="videoshow">课程展示1</a>
			</div>
			

		<a onclick="JavaScript:addFavorite2()"><img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/sc.png" draggable="false">加入收藏</a>
		<!-- http://localhost:8080/Voids/controller/adminLogin.do   http://localhost:8080/SSM/后台课程展示.jsp-->
		<a target="_blank" onclick="l()"><img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/we.png" draggable="false"  >后台管理登录</a>
		<a class="color_e4"><img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/phone.png" draggable="false"> 0371-88888598　　4006-371-555</a>

	</div>
</header>



    <!--banner图-->
    <div class="banner index-banner">
	<img alt="" src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/banner-2.jpg">
	</div>
	
	
    <!--模块化课程-->
    <div class="course">
        <div class="container">
            <p class="title">模块化课程，从入门到精通，大神并不遥远</p>
            <div class="course-info">
                <table cellspacing="10">
                    <tbody><tr>
                        <td colspan="2">
                            <a href="subjectCourseAndVideoo?id=1" >
                                <img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/html5.jpg" alt="" class="image scale" draggable="false">
                                <div class="headline">
                                    <span>Web前端教程</span>
                               <!--href="usershow22"  -->     <img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/arrow.png" alt="">
                                </div>
                            </a>
                        </td>
                        <td>
                            <!--上线时修改id-->
                            <a href="subjectCourseAndVideoo?id=6">
                                <img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/ui.jpg" alt="" class="image scale" draggable="false">
                                <div class="headline">
                                    <span>UI设计教程</span>
                                    <img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/arrow.png" alt="">
                                </div>
                            </a>
                        </td>
                        <td rowspan="2" class="one_three">
                            <a  class="opacity5" href="subjectCourseAndVideoo?id=2">
                                <img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/java.jpg" alt="" class="image" draggable="false">
                                <div class="headline">
                                    <span>Java教程</span>
                                    <img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/arrow.png" alt="">
                                </div>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a  class="opacity5" href="subjectCourseAndVideoo?id=5">
                                <img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/bigdata.jpg" alt="" class="image" draggable="false">
                                <div class="headline">
                                    <span>大数据教程</span>
                                    <img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/arrow.png" alt="">
                                </div>
                            </a>
                        </td>
                        <td colspan="2">
                            <a href="subjectCourseAndVideoo?id=10">
                                <img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/python.jpg" alt="" class="image scale" draggable="false">
                                <div class="headline">
                                    <span>Python教程</span>
                                    <img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/arrow.png" alt="">
                                </div>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" >
                            <a href="subjectCourseAndVideoo?id=11">
                                <img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/php.jpg" alt="" class="image scale" draggable="false">
                                <div class="headline">
                                    <span>PHP教程</span>
                                    <img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/arrow.png" alt="">
                                </div>
                            </a>
                        </td>
                        <td colspan="2" class="three_two">
                            <img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/qidai.jpg" alt="" class="image" draggable="false">
                            <div class="headline">
                                更多课程，敬请期待...
                            </div>
                        </td>
                    </tr>
                </tbody></table>
                <!--马上试听-->
                <a onclick="pyRegisterCvt()" target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2580094677&amp;site=qq&amp;menu=yes">
                    <div class="audition">高级课程</div>
                </a>
            </div>
        </div>
    </div>


    <!--报名表单-->
    <div class="form_area">
        <div class="container">
            <p class="title"><b>这个世界上可以选择的很多，可以改变命运的选择很少<br>你现在准备好向梦想出发了吗？</b></p>
            <form id="iform" action="http://localhost:8080/090/plus/dmail.php" enctype="multipart/form-data" method="post">
                <div class="form_line1"></div>
                <div class="form_line2"></div>
                <div class="wrap">
                    <input name="action" value="post" type="hidden">
                    <input name="diyid" value="3" type="hidden">
                    <input name="do" value="2" type="hidden">
                    <input name="ip" value="" type="hidden">
                    <input name="time" value="" type="hidden">
                    <div><label for="name">姓名：</label><input name="name" id="name" class="form-control" type="text"></div>
                    <div><label for="tel">手机号：</label><input name="tel" id="tel" class="form-control" type="text"></div>
                    <div><label for="qq">QQ：</label><input name="qq" id="qq" class="form-control" type="text"></div>
                </div>
                <input class="button" value="立即报名" type="submit">
            </form>
        </div>
    </div>

    
<!--页脚-->
<footer>
	<ul>
		<li>
			<img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/footer_logo.png" alt="" draggable="false">
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
						<img class="weixin" src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/a_002.png" alt="" draggable="false">
						<img class="weibo" src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/a.png" alt="" draggable="false">
					</div>
				</li>
			</ul>
		</li>
	</ul>
	<div class="record">智游教育 © 豫ICP备17000832号-1 　河南智游臻龙教育科技有限公司</div>
</footer>

<!--登录注册弹出框2-->
<div class="mask hidden" id="login">
	<div class="mask_content">
		<div class="mask_content_header">
			<img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/logo.png" alt="" class="ma">
		</div>
		<div class="mask_content_body">
			<form id="loginForm" action="login">
				<h3>管理员登录</h3>
				<input id="loginEmail" placeholder="请输入用户名" name="username" type="password">
				<input id="loginPassword" placeholder="请输入密码" name="password2" type="password">
				<!-- <div id="forget">
					<a href="http://localhost:8080/video/front/user/forgetPassword.action">忘记密码？</a>
				</div> -->
				<input  value="登　录" type="submit"><!-- onclick="return commitLogin()" -->
			</form>
		</div>
		<div class="mask_content_footer">
			&nbsp;<span onclick="p()" id="login_close">关　闭</span>
		</div>
	</div>
</div>
<!-- 登录弹出3  -->
<div class="mask hidden" id="loginw">
	<div class="mask_content">
		<div class="mask_content_header">
			<img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/logo.png" alt="" class="ma">
		</div>
		<div class="mask_content_body">
			<form id="loginForm" action="loginww">
				<h3>用户登录</h3>
				<input id="loginEmail" placeholder="请输入用户名" name="email" type="email"><i id="message"></i>
				<input id="loginPassword" placeholder="请输入密码" name="password" type="password">
				<!-- <div id="forget">
					<a href="http://localhost:8080/video/front/user/forgetPassword.action">忘记密码？</a>
				</div> -->
				<input  value="登　录" type="submit"><!-- onclick="return commitLogin()" -->
			</form>
		</div>
		<div class="mask_content_footer">
			&nbsp;<span onclick="rr()" id="login_close">关　闭</span>
		</div>
	</div>
</div>
<!--登录注册弹出框-->
<div class="mask hidden" id="loginu" >
	<div class="mask_content">
		<div class="mask_content_header">
			<img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/logo.png" alt="" class="ma">
		</div>
		<div class="mask_content_body">
			<form id="loginForm" action="loginuser" ><!-- onsubmit="return qq()" -->
				<h3>快速登录</h3>
				<input id="loginEmail" placeholder="请输入邮箱" name="email" type="email"><i id="message"></i>
				<input id="loginPassword" placeholder="请输入密码" name="password" type="password">
				<!-- <div id="forget">
					<a href="http://localhost:8080/video/front/user/forgetPassword.action">忘记密码？</a>
				</div> -->
				<input  value="登　录" type="submit"><!-- onclick="return commitLogin()" -->
			</form>
		</div>
		<div class="mask_content_footer">
			<span onclick="t()" id="login_close">关　闭</span>
		</div>
	</div>
</div>
<div class="mask hidden" id="reg">
	<div class="mask_content">
		<div class="mask_content_header">
			<img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/logo.png" alt="" class="ma">
		</div>
		<div class="mask_content_body">
			<form id="regForm" action="userRegister" onsubmit="return e()">
				<h3>新用户注册</h3>
				<input id="regEmail" placeholder="请输入邮箱" name="email" type="email"><span id="emailMsg"></span><i id="i"></i>
				<input id="regPsw" placeholder="请输入密码" name="password" type="password">
				<input id="regPswAgain" placeholder="请再次输入密码" name="psw_again" type="password"><span id="passMsg"></span>
				<!--  <div id="yzm" class="form-inline">
					<input name="yzm" style="width: 45%; display: inline-block;" type="text">
					<div id="v_container" style="width: 45%;height: 40px;float:right;"><canvas id="verifyCanvas" width="100" height="38" style="cursor: pointer;">您的浏览器版本不支持canvas</canvas><canvas id="verifyCanvas" width="100" height="38" style="cursor: pointer;">您的浏览器版本不支持canvas</canvas></div>
				</div>  -->
				<input onclick="return commitRegForm();" value="注　册" type="submit">
			</form>
		</div>
		<div class="mask_content_footer">
			<span onclick="q()" id="reg_close">关　闭</span>
		</div>
	</div>
</div>


    
<script src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/jquery-1.js.下载"></script>
<script src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/gVerify.js.下载"></script>
<script src="js/index.js"></script>
<script src="js/gVerify.js"></script>

</body>

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
var u=document.getElementById('loginu');

var o=document.getElementById('login');
var x=document.getElementById('reg');

var r=document.getElementById('loginw');

function ro(){
	 alert("请登录");
	 r.className="mask";
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
 
function l(){
	
	 o.className="mask";
}
function p(){
	 o.className='mask hidden';
	 
}

 function z(){
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
</script>

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

</script>  -->

</html>