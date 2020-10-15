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
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
/* var x=document.getElementById('reg');
function zz(){
	 alert("w");
	 x.className="mask";
	 alert("h1");
}
function q(){
	 x.className="mask hidden";
}
alter("hq"); */
/* $('#reg_opennn').click(function () {
    $('#reg').removeClass('hidden');
});

$('#login_openn').click(function () {
    $('#loginu').removeClass('hidden');
}); */
</script>

</head>

<body class="w100" style="padding-top: 0px;">
    


<!-- 

 -->
<header>
	<div class="container">
		<span>欢迎来到IT培训的黄埔军校——智游教育！</span>

			<div id="userBlock" style="float:right">
				
				<!--  onclick="zz()"--> <a    id="reg_open" >注册</a> 
				<!--  onclick="w()" -->  <a   id="login_open" >登录</a>
				
				<c:if test="${USER==null }">
				<a   id="login_open" >${USER.email }</a>
				</c:if>
				
				
			</div>
			

		<a onclick="JavaScript:addFavorite2()"><img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/sc.png" draggable="false">加入收藏</a>
		<!-- http://localhost:8080/Voids/controller/adminLogin.do   http://localhost:8080/SSM/后台课程展示.jsp-->
		<!--  --><a target="_blank"   onclick="l()" ><img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/we.png" draggable="false"  >后台管理登录</a>
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
                            <a href="subjectCourseAndVideoo?id=1" ><!--  onclick="ro()"-->
                                <img src="/img/z/html5.jpg" alt="" class="image scale" draggable="false"><!--./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/html5.jpg  -->
                                <div class="headline">
                                    <span>Web前端教程</span>
                               <!--href="usershow22"  -->     <img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/arrow.png" alt="">
                                </div>
                            </a>
                        </td>
                        <td>
                            <!--上线时修改id-->
                            <a  href="subjectCourseAndVideoo?id=6" ><!--onclick="ro()"  -->
                                <img src="/img/z/ui.jpg" alt="" class="image scale" draggable="false"><!-- ./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/ui.jpg -->
                                <div class="headline">
                                    <span>UI设计教程</span>
                                    <img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/arrow.png" alt="">
                                </div>
                            </a>
                        </td>
                        <td rowspan="2" class="one_three">
                            <a  class="opacity5" href="subjectCourseAndVideoo?id=2"><!--  onclick="ro()"-->
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
<div class="mask hidden" id="loginadmin" >
	<div class="mask_content">
		<div class="mask_content_header">
			<img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/logo.png" alt="" class="ma">
		</div>
		<div class="mask_content_body">
			<form id="loginFormb" action="login" >
				<h3>管理员登录</h3>
				<input id="loginEmail" placeholder="请输入用户名" name="username" type="password"><span id="loginMsgA"></span>
				<input id="loginPassword" placeholder="请输入密码" name="password2" type="password"><span id="loginMsgA"></span>
				<!-- <div id="forget">
					<a href="http://localhost:8080/video/front/user/forgetPassword.action">忘记密码？</a>
				</div> -->
				<input  value="登　录" onsubmit="return eA()"  type="submit"><!-- onclick="return commitLogin()"  -->
			</form>
		</div>
		<div class="mask_content_footer">
			&nbsp;<span  onclick="p()" >关　闭</span><!--  -->
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
				<h3>用户登录2</h3>
				<input id="loginEmail" placeholder="请输入用户名" name="email" type="email"><i id="message"></i>
				<input id="loginPassword" placeholder="请输入密码" name="password"  type="password">
				<!-- <div id="forget">
					<a href="http://localhost:8080/video/front/user/forgetPassword.action">忘记密码？</a>
				</div> -->
				<input  value="登　录" type="submit"   ><!--  onclick="return commitLogin()"-->
			</form>
		</div>
		<div class="mask_content_footer">
			&nbsp;<span onclick="rr()" id="login_close">关　闭</span>
		</div>
	</div>
</div>
<!-- 登录3 -->
<!--登录注册弹出框-->
<!--  <div class="mask hidden" id="login">
	<div class="mask_content">
		<div class="mask_content_header">
			<img src="/img/z/logo.png" alt="" class="ma">
		</div>
		<div class="mask_content_body">
			<form id="loginForm" action="loginuser" >
				<h3>快速登录</h3>
				<input id="loginEmail" placeholder="请输入邮箱" name="email" type="email"><span id="loginMsg"></span>
				<input id="loginPassword" placeholder="请输入密码" name="password" type="password"><span id="passMsg"></span>
				<div id="forget">
					<a href="http://localhost:8080/video/front/user/forgetPassword.action">忘记密码2</a>
				</div>
				<span id="submitMsg"></span>
				<input onsubmit="return eU()" value="登　录" type="submit"/>
			</form>
		</div>
		<div class="mask_content_footer">
			<span id="login_close">关　闭</span>
		</div>
	</div>
</div> 
 -->
<!--登录注册弹出框-->
 <div class="mask hidden" id="login" >
	<div class="mask_content">
		<div class="mask_content_header">
			<img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/logo.png" alt="" class="ma">
		</div>
		<div class="mask_content_body">
			<form id="loginForma" action="loginuser" ><!-- onsubmit="return qq()" -->
				<h3>用户登录</h3>
				<input id="loginEmail" placeholder="请输入邮箱" name="email" type="email"><i id="loginMsg"></i>
				<input id="loginPassword" placeholder="请输入密码" name="password" type="password"><span id="passMsg"></span>
				<!-- <div id="forget">
					<a href="">忘记密码？</a>
				</div> -->
				<input   value="登　录" type="submit" >   <!-- onsubmit="return eU()"  onclick="return commitLogin()" onclick="return eU()" onclick="return commitLogin()" -->
			</form>
		</div>
		<div class="mask_content_footer">
			<span  id="login_closee" >关　闭</span>
		</div>
	</div>
</div>


<div class="mask hidden" id="reg">
	<div class="mask_content">
		<div class="mask_content_header">
			<img src="./在线公开课-智游教育_java_大数据_HTML5_python_UI_PHP视频教程_files/logo.png" alt="" class="ma">
		</div>
		<div class="mask_content_body">
			<form id="regForm" action="userRegister" onsubmit="return eee()" ><!--onsubmit="return e()"  -->
				<h3>新用户注册</h3>
				<input id="regEmail" placeholder="请输入邮箱" name="email" type="email"><span id="emailMsg"></span><i id="i"></i>
				<input id="regPsw" placeholder="请输入密码" name="password" type="password">
				<input id="regPswAgain" placeholder="请再次输入密码" name="psw_again" type="password"><span id="passMsg"></span>
				<!--  <div id="yzm" class="form-inline">
					<input name="yzm" style="width: 45%; display: inline-block;" type="text">
					<div id="v_container" style="width: 45%;height: 40px;float:right;"><canvas id="verifyCanvas" width="100" height="38" style="cursor: pointer;">您的浏览器版本不支持canvas</canvas><canvas id="verifyCanvas" width="100" height="38" style="cursor: pointer;">您的浏览器版本不支持canvas</canvas></div>
				</div>  -->
				<input  value="注　册" onclick="return commitRegForm()" type="submit"><!--onclick="return  commitRegForm()"   -->
			</form>
		</div>
		<div class="mask_content_footer">
			<span  id="reg_close">关　闭</span><!-- onclick="q()" -->
		</div>
	</div>
</div>


    

<script src="js/index.js"></script>
<script src="js/gVerify.js"></script>

</body>

<script type="text/javascript">

/* $(function() {
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

	}); */

	var flag=true;
	
	$("#regPswAgain").blur(function(){
	     var pass01= $("#regPsw").val();
	      var pass02= $("#regPswAgain").val();
	      if(null==pass01 || ""==pass01 || null==pass02 || ""==pass02){
	          $("#passMsg").text("密码不能为空").css("color","red");
	          flag =false;
	      }else{
	          if(pass01!=pass02){
	        	  flag=false;
	              $("#passMsg").text("两次密码输入不一致，请重新输入").css("color","red");
	          }else{
	        	  flag=true;
	              $("#passMsg").text("");
	          }
	      }
	      
	});

	
   	$("#regEmaila").blur(function(){
   	    //不为空再校验
   	    var emailVal=$("#regEmaila").val();
   	    //alert(emailVal);
   	    // js 判断不相等  不能使用   !""==xxxx
   	    if(null != emailVal && ""!=emailVal){
   	        var params={"email":emailVal};
   	        
   	       // alert(params);
   	        $.post("ByEmail",params,function(data){
   	        	//eval() 函数用来执行一个字符串表达式，并返回表达式的值。
   	        	
   	        	var json = eval(data);
   	            if(json=="success"){
   	            	
   	               $("#emailMsga").text("该邮箱可用").css("color","green");
   	                  flag=true;
   	            }else{
   	            	
   	              $("#emailMsga").text("该邮箱已注册，请直接登录").css("color","red");
   	                  flag=false;
   	            }
   	        });
   	    }

   	});

   	function eee(){
   		
   		
   		return flag;
   		alert(flag);
   	}
	/*$("#loginout").click(function(){
	     
	     $.get("front/user/loginOut.action",null,function(){
	          $("#regBlock").css("display","block");
	          $("#userBlock").css("display","none");
	     });

	});*/


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
 
function l(){
	
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

<script type="text/javascript">
var ad=document.getElementById('loginForma');

 $().ready(function () {
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
 
 var add=document.getElementById('loginFormb');

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

 <script type="text/javascript">

 /* user登录验证 */
	var flagU=false;
	var flagU1=false;
	var flagU2=false;
	var flagU3=false;
$("#loginEmail").blur(function () {
	if($("#loginEmail").val()==""){
		$("#loginMsg").text("用户名不能为空")
		flagU1=false;
	}else{
		$("#loginMsg").text("")
		flagU1=true;
	}
})
$("#loginPassword").blur(function () {
	if($("#loginPassword").val()==""){
		$("#passMsg").text("密码不能为空")
		flagU2=false;
	}else{
		$("#passMsg").text("")
		flagU2=true;
	}
})
function AU() {
	$.ajax({
		url:"userLoginCheck",
		data:{
			email:$("#loginEmail").val(),
			password:$("#loginPassword").val()
		},
		success:function(data){
			if(data==1){
				$("#submitMsg").text("用户名或密码不正确")
				flagU3=false;
			}else{
				$("#submitMsg").text("")
				flagU3=true;
			}
		}
	})
}
function eU() {
	AU();
	if(flagU1==true&&flagU2==true&&flagU3==true){
		flagU=true;
	}else{
		flagU=false;
	}
	return flagU;
}



/* admin登录验证 */
	var flagA=false;
	var flagA1=false;
	var flagA2=false;
	var flagA3=false;
	 $("#loginEmailA").blur(function () {
		if($("#loginEmailA").val()==""){
			$("#loginMsgA").text("用户名不能为空")
			flagA1=false;
		}else{
			$("#loginMsgA").text("")
			flagA1=true;
		}
	})
	$("#loginPasswordA").blur(function () {
		if($("#loginPasswordA").val()==""){
			$("#passMsgA").text("密码不能为空")
			flagA2=false;
		}else{
			$("#passMsgA").text("")
			flagA2=true;
		}
	})
	function AA() {
		$.ajax({
			url:"usernameCheckA",
			data:{
				username:$("#loginEmailA").val(),
				password:$("#loginPasswordA").val()
			},
			success:function(data){
				if(data==1){
					$("#submitMsgA").text("用户名或密码不正确")
					flagA3=false;
				}else{
					$("#submitMsgA").text("")
					flagA3=true;
				}
			}
		})
	}
	function eA() {
		AA();
		if(flagA1==true&&flagA2==true&&flagA3==true){
			flagA=true;
		}else{
			flagA=false;
		}
		return flagA;
	}

/* 
$().ready(function(){
$(di).validate({

	rules:
		
});

})


$().ready(function () { //jquery预备函数,执行
		$("#regForm").validate({ //#regForm
			alert(11);
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
					equalTo:"#regPswAgain"
				}
			},
			
			 alert(rules);
			/*对应规则的提示信息
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
					equalTo:"原密码不相同"
				}
			}
		});
	})
	
 */

</script> 



</html>