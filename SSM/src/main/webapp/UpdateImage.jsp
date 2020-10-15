<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script src="~/Scripts/jquery-3.4.1.min.js"></script>
    <!-- base href="http://localhost:8080/video/" -->
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    
            <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
      
<!--<base href="http://localhost:8080/Voids/">--><base href=".">
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="Web前端视频教程,大数据视频教程,HTML5视频教程,UI视频教程,PHP视频教程,java视频教程,python基础教程">
    <meta name="description" content="智游教育在线课程视频,为您提供java,python,HTML5,UI,PHP,大数据等学科经典视频教程在线浏览学习,精细化知识点解析,深入浅出,想学不会都难,智游教育,学习成就梦想！">
    <link rel="stylesheet" href="./修改头像_files/base.css">
    <link rel="stylesheet" href="./修改头像_files/profile.css">
    <link rel="stylesheet" href="./修改头像_files/jquery.css">
    <title>在线公开课-智游教育|java|大数据|HTML5|python|UI|PHP视频教程</title>


<script type="text/javascript">

/* alert("这是一个警告框"); */
window.onload =function () {
	<%-- var o=document.getElementById('aaa');
	/* alert("a"); */
	
	var str="<%=request.getAttribute("imagename") %>";
	/* alert(str); */
	// o.src="./修改头像_files/"+str;  
	 o.src=str; --%>
	
	 //alert(o.src);
	 var o=document.getElementById('aaa');
	 /* alert(o.src); */
	 var str="<%=request.getAttribute("imagename") %>";
	 o.src="http://localhost:8080/SSM/"+str;
	 o.src =${userimg2 };
	
}
/*  function yy() {

	 document.getElementById('aaa').src = o.src;
}   */
 

/* alert(str); */
// o.src="./修改头像_files/"+str;  
/* function fileSelectHandlerr() {
	
    // get selected file
    var oFile = $('#image_filee')[0].files[0];
   
    // hide all errors
    $('.errorr').hide();
    
    // check for image type (jpg and png are allowed)
    var rFilter = /^(image\/jpeg|image\/png)$/i;
    if (!rFilter.test(oFile.type)) {
        $('.errorr').html('请选择一张 jpg 格式 或是 png 格式的图片。').show();
        return;
    }
  
    // check for file size
    if (oFile.size > 250 * 1024) {
        $('.errorr').html('您选择的图片文件过大，请更换一张较小的图片。').show();
        return;
    }
  
    // preview element
    var oImage = document.getElementById('preview');
      
    // prepare HTML5 FileReader
    var oReader = new FileReader();
    
    oReader.onload = function (e) {

        // e.target.result contains the DataURL which we can use as a source of the image
        oImage.src = e.target.result;
        
        oImage.onload = function () { // onload event handler

            // display step 2
            $('.step2').fadeIn(500);

            // display some basic image info
            var sResultFileSize = bytesToSize(oFile.size);
            $('#filesize').val(sResultFileSize);
            $('#filetype').val(oFile.type);
            $('#filedim').val(oImage.naturalWidth + ' x ' + oImage.naturalHeight);

            // Create variables (in this scope) to hold the Jcrop API and image size
            var jcrop_api, boundx, boundy;

            // destroy Jcrop if it is existed
            if (typeof jcrop_api != 'undefined')
                jcrop_api.destroy();

            // initialize Jcrop
            $('#preview').Jcrop({
                minSize: [32, 32], // min crop size
                aspectRatio: 1, // keep aspect ratio 1:1
                bgFade: true, // use fade effect
                bgOpacity: .3, // fade opacity
                onChange: updateInfo,
                onSelect: updateInfo,
                onRelease: clearInfo
            }, function () {

                // use the Jcrop API to get the real image size
                var bounds = this.getBounds();
                boundx = bounds[0];
                boundy = bounds[1];

                // Store the Jcrop API in the jcrop_api variable
                jcrop_api = this;
                
            });
        };
    };
    
    // read selected file as DataURL
    oReader.readAsDataURL(oFile);
    
} */

</script>

</head>

<body class="w100">
    



<header>
	<div class="container top_bar clearfix">
		<img src="./修改头像_files/logo.png" alt="智游">
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
                     <ul class="profile_tab_header f_left clearfix">
                   <li><a href="userbyid?id=${USER.id}">更改资料</a></li><!--  userbyid?id=${user.id } -->
                    <li class="profile_tab_line">|</li>
                    <li><a href="userbyidT?id=${USER.id}">更改头像</a></li>
                    <li class="profile_tab_line">|</li>
                    <li><a href="userById?id=${USER.id }">密码安全</a></li>
                </ul>
                </ul>
                <div class="proflle_tab_body">
                    <div class="proflle_tab_workplace clearfix">
                        <div class="profile_avatar_area">
                            	
                                <%--  <img src="${userimg2 }" id="aaa"  > --%>
                                <img src="${userimg2 }" id="aaa"   width="200px;" > </img> <!-- ${userimg2 } alt="图像加载失败"   -->
                               <%-- <img alt="" src='<c:url value="${userimg2 }"></c:url>' id="aaa"> </img> --%>
                            	<!-- ./修改头像_files/avatar_lg.png -->
                            	<!-- <img src="./修改头像_files/3qa.jpg" id="aaa"  > -->
                            
      <!-- <form action="" method="post" enctype="multipart/form-data" name="form1">
   <img src=" " name="image" border=0  id="img"/>
   <br />
   <input name="picture"  type="file" id="picture" onchange="img.src=this.value" />
</form>
onchange="showImgToView('EmployeePicture')" />
<img src="${USER.imgUrl }" style="height: 200px; width: 200px">
    </div>
 -->
                            
                            <p style="text-align: center;">当前头像</p>
                        </div>
                        <div class="profile_ifo_area">
                            <form id="upload_form" action="upload2" method="post" enctype="multipart/form-data"><!-- useruploas -->
                                <!-- hidden crop params -->
                              <input type="hidden" value="${USER.id }" name="id">

                                <p>第一步：请选择图像文件</p><!-- onchange="fileSelectHandler()" -->
                                <div>
                                <div><input name="image_file" id="image_filee" onchange="fileSelectHandlerr()" type="file"></div>
                                
                                <!-- <input name="image_file" id="image_file" onchange="showImgToView('EmployeePicture')"  type="file"> -->
                                <!--  <input type="file" name="image_file" id="EmployeePicture" accept="image/*" onchange="showImgToView('EmployeePicture')" /> -->
                                </div>

                                <div class="errorr"></div>

                                <div class="step2">
                                    <p>第二步：请确定,然后按上传</p>
                            

                                    <input   value="上传" type="submit"  >
                                    <%-- ${userimg2 } --%>
                              
                                  <%-- ${userimg2 } --%>
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
			<li><img src="./修改头像_files/footer_logo.png" alt="" id="foot_logo"></li>
			<li>版权所有：智游3G教育　　　©&nbsp;www.zhiyou100.com</li>
			<li><img src="./修改头像_files/a.png" alt="" id="wxgzh"></li>
		</ul>
	</div>
</footer>




<script src="./修改头像_files/jquery-1.js.下载"></script>
<script src="./修改头像_files/gVerify.js.下载"></script>
<script src="./修改头像_files/index.js"></script>

<script src="js/Jcrop_upload.js"></script>
<script src="./修改头像_files/jquery.js"></script>
<script src="./修改头像_files/Jcrop_upload.js"></script>

 <script type="text/javascript">
/* //1、单击调用chooseImageFile方法
function chooseImageFile(inputFileID) {
    $("#" + inputFileID).click();   //模拟点击EmployeePicture（input）,出发showImgToView()方法
}

//2、创建FileReader对象
var fileReader = new FileReader();
//正在判断是否符合图片类型
regexImageFile = /^(?:image\/bmp|image\/cis\-cod|image\/gif|image\/ief|image\/jpeg|image\/jpeg|image\/jpeg|image\/pipeg|image\/png|image\/svg\+xml|image\/tiff|image\/x\-cmu\-raster|image\/x\-cmx|image\/x\-icon|image\/x\-portable\-anymap|image\/x\-portable\-bitmap|image\/x\-portable\-graymap|image\/x\-portable\-pixmap|image\/x\-rgb|image\/x\-xbitmap|image\/x\-xpixmap|image\/x\-xwindowdump)$/i;

//3、利用改变事件将图片显示出来
function showImgToView(inputFileId) {
    //选择图片文件
    var imgFile = $("#" + inputFileId).get(0).files[0];
    //判断上传文件是否为图片格式
    if (!regexImageFile.test(imgFile.type)) {
        return;
    } else {
        //将文件读取为DataURL
        fileReader.readAsDataURL(imgFile);
    }
}

//4、读取文件
fileReader.onload = function (evt) {
    //将该URL绑定到img标签的src属性上，就可以实现图片的上传预览效果
    $("#IsImgEmployeePicture").attr("src", evt.target.result);
} */
</script> 

</body>



</html>