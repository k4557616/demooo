<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <!-- base href="http://localhost:8080/video/" -->
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
     <script src="jquery/jquery.js">
</script>
<script src="jquery/jquery.validate.min.js">
</script>
<script src="jquery/messages_zh.js">
</script>
        
<!--<base href="http://localhost:8080/Voids/">--><base href=".">
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="Web前端视频教程,大数据视频教程,HTML5视频教程,UI视频教程,PHP视频教程,java视频教程,python基础教程">
    <meta name="description" content="智游教育在线课程视频,为您提供java,python,HTML5,UI,PHP,大数据等学科经典视频教程在线浏览学习,精细化知识点解析,深入浅出,想学不会都难,智游教育,学习成就梦想！">
    <link rel="stylesheet" href="./修改密码_files/base.css">
    <link rel="stylesheet" href="./修改密码_files/profile.css">
    <link rel="icon" href="http://localhost:8080/Voids/static/z/favicon.png" type="image/png">
    <title>在线公开课-智游教育|java|大数据|HTML5|python|UI|PHP视频教程</title>

</head>

<body class="w100">
   



<header>
	<div class="container top_bar clearfix">
		<img src="./修改密码_files/logo.png" alt="智游">
		<div id="tele">
			<span>4006-371-555</span>
			<span>0371-88888598</span>
		</div>
	</div>
	<menu>
		<div class="container clearfix">
			<ul class="clearfix f_left">
				<li><a href="show.jsp">首页</a></li>
				
				<li class="menu_active"><a href="userbyidshow?id=${USER.id }">个人中心</a></li>
			</ul>
			
			<div id="user_bar">
				<a>
						
						<img id="avatar" src="${userimg2 }" alt="" >
						
						
					

				</a>
				<a href="exit" id="lay_out">退出</a>
			</div>
		</div>
	</menu>
</header>

   <main>
        <div class="container">
            <h2>我的资料</h2>
            <div id="profile_tab">
                <ul class="profile_tab_header f_left clearfix">
                  <li><a href="userbyid?id=${USER.id}">更改资料</a></li><!--  userbyid?id=${user.id } -->
                    <li class="profile_tab_line">|</li>
                    <li><a href="userbyidT?id=${USER.id}">更改头像</a></li>
                    <li class="profile_tab_line">|</li>
                    <li><a href="userById?id=${USER.id }">密码安全</a></li>
                </ul>
                <div class="proflle_tab_body">
                    <div class="proflle_tab_workplace clearfix">
                        <div class="profile_avatar_area">
                        
                           
		                         <img id="avatar" width="200px;" src="${userimg2 }" alt="">
		                      
		                      
		                      
                           
                        </div>
                        <div class="profile_ifo_area" ><!-- regPswAgain -->
                            <form action="userupdateM" method="post" id="regPswAgain">
                                <div class="form_group">
                               
                          
                                    <span class="dd">旧　密　码：</span>
                                    <input type="hidden"  value="${USER.id }" id="id" name="id">
                                    <input  type="password" id="oldpass" name="oldpassword"   ><span id="oldMsg"></span><!-- value="${USER.password }" -->
                                </div>
                                <div class="form_group">
                                    <span class="dd">新　密　码：</span>
                                    <input name="password" type="password" id="password"><span id="newMsg"></span>
                                </div>
                                <div class="form_group">
                                    <span class="dd">确认新密码：</span>
                                    <input name="password2" type="password"><span id="passMsg"></span>
                                </div>
                                <div class="form_submit dd">
                                    <input value="保　存" type="submit" id="btn">
                                    <!-- <a >取消</a> -->
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    


<footer>
	<div class="container">
		<ul>
			<li><img src="./修改密码_files/footer_logo.png" alt="" id="foot_logo"></li>
			<li>版权所有：智游3G教育　　　©&nbsp;www.zhiyou100.com</li>
			<li><img src="./修改密码_files/a.png" alt="" id="wxgzh"></li>
		</ul>
	</div>
</footer>

<script type="text/javascript">

$().ready(function () { 
	$("form").validate({
		rules:{
			
			
			password:{
				required:true,
				minlength:2
			},
			password2:{
				required:true,
				 equalTo:"#password" 
			}
		},
		/*对应规则的提示信息*/
		messages:{
			
			password:{
				required:"请输入密码",
				minlength:"密码最小为2位"
			},
			password2:{
				required:"请确认密码",
				equalTo:"新密码不相同" 
			}
		}
	});
})
</script>

<!--  		var flag=true; 

 	
 	

 -->

 	<script type="text/javascript">
 	
 	$("#oldpass").blur(function() {
		$.ajax({
			url:"userById2",  		/* 请求的地址是什么 */
		data:{				/* 请求服务器时候传递的数据集合 */
				id:$("#id").val(),
				oldpassword:$("#oldpass").val()  /*  key: value */
			},
			success:function(data){	/* 请求成功后执行的方法*/
				if (data=="1") {    /* data是服务器传过来的参数 */
					$("#oldMsg").text("旧密码输入正确");
				}else {
					$("#oldMsg").text("旧密码输入错误");
				}
			}
		})
		
		
	})
/*   $("#oldpass").blur(function(){
 		$.ajax({
 			url:"userById2",
				data:{
					oldpassword:$("#oldpass").val()
				},
				success:function(data){
					if(data=="1") {
						document.getElementById("oldMsg").innerHTML = "旧密码输入正确";
						
						document.getElementById("btn").onclick = function(event){
							return true;
						};
					} else if($("#oldpass").val()!=""){
						document.getElementById("oldMsg").innerHTML = "旧密码输入错误";
						$("#oldMsg").css('color','red');
						document.getElementById("btn").onclick = function(event){
							return false;
						};
					} else {
						$("#oldMsg").text("");
						document.getElementById("btn").onclick = function(event){
							return false;
						};
					}
				}
 		})
 	}) */   
/* 	 $(function(){
         $("#newpass_ag").blur(function(){
             if($("#newpass").val()!=$("#newpass_ag").val()){
            	 $("#passMsg").text("两次密码不相同");
            	 $("#passMsg").css('color','red');
            	 document.getElementById("btn").onclick = function(event){
            		 return false;
				 };
             } else if($("#newpass").val()!="" && $("#newpass_ag").val()!="") {
            	 $("#passMsg").text("两次密码相同");
            	 $("#passMsg").css('color','green');
            	 document.getElementById("btn").onclick = function(event){
            		 return true;
            	}; 
			} else {
				$("#passMsg").text("");
				document.getElementById("btn").onclick = function(event){
           		 return false;
				};
			}
         })
     })
     
     $("#newpass").blur(function(){
    		$.ajax({
    			url:"checkPassword",
  				data:{
  					userId:$("#userId").val(),
  					password:$("#newpass").val()
  				},
  				success:function(data){
  					if(data=='yes') {
  						document.getElementById("newMsg").innerHTML = "与旧密码相同";
  						$("#newMsg").css('color','red');
  						document.getElementById("btn").onclick = function(event){
  							return false;
  						};
  					} else if($("#newpass").val()!=""){
  						document.getElementById("newMsg").innerHTML = "新密码可以使用";
  						$("#newMsg").css('color','green');
  						document.getElementById("btn").onclick = function(event){
  							return true;
  						};
  					} else {
  						$("#newMsg").text("");
  						document.getElementById("btn").onclick = function(event){
  		           		 return false;
  						};
  					}
  				}
    		})
    	})
      */
    
 	</script>
 
</body></html>