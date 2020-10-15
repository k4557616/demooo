<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!--<base href="http://localhost:8080/Voids/">--><base href=".">
		
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>智游教育</title>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
 <link href="./js/bootstrap.css" rel="stylesheet"> 
  <script src="./js/jquery-1.js"></script>
<script src="./js/bootstrap.js"></script>
<script src="./js/confirm.js"></script>
<script src="./js/jquery.js"></script>
<script src="./js/message_cn.js"></script>

		<style type="text/css">
		th {
			text-align: center;
		}
		</style>
		
		<script type="text/javascript">
		
		  
			function o() {
				if(confirm('温馨提示：确定要删除吗？')){
					var u=document.getElementById('fo');
					u.action="speakerdeleteAll";
					u.submit;  
					alert("删除成功");
					return true;
					}
			 return false;
				
			}
			
		
		
		</script>
		
	</head>

	<body>
<nav class="navbar-inverse">
	<div class="container">
		
		<div class="navbar-header">
			<a class="navbar-brand">视频管理系统</a>
		</div>

		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-9">
			<ul class="nav navbar-nav">
			<li ><a href="adminvideoshow">视频管理</a></li>
				<li class="active"><a href="adminspeakershow">主讲人管理</a></li>
				<li   ><a href="courseshow" >课程管理</a></li>
			</ul>
			<p class="navbar-text navbar-right">
				<span>${ADMIN.username }</span> <i class="glyphicon glyphicon-log-in" aria-hidden="true"></i>&nbsp;&nbsp;<a href="exit" class="navbar-link">退出</a>
			</p>
		</div>
		<!-- /.navbar-collapse -->


	</div>
	<!-- /.container-fluid -->
</nav>

	
	
		
	
    
    <div class="jumbotron" style="padding-top: 15px;padding-bottom: 15px;">
	  <div class="container">
	          <h2>主讲人管理</h2>
	  </div>
	</div>
	
	<form action="adminspeakershow" id="fo">
	<div class="container"><!-- data-toggle="dropdown" -->
	    <button  type="button" class="btn btn-info dropdown-toggle"  aria-haspopup="true" aria-expanded="false">
		     <a href="SpeakerAdd.jsp">添 加</a> 
		</button>
		<!-- onclick="deleteAll()" -->
		<button  type="submit" id="btn" class="btn btn-info dropdown-toggle">
		
		
		
		 <a onclick="o()">批量删除</a>    
		
		</button>
	</div>
	
	<div class="container" style="margin-top: 20px;">
		
		<table class="table table-bordered table-hover" style="text-align: center;table-layout:fixed;">
      <thead>
        <tr class="active">
          <th><input type="checkbox" id="all" ></th>
          <th>序号</th>
          <th style="width:16%">标题</th>
          <th >职位</th>
          <th style="width:60%">简介</th>
          <th>编辑</th>
          <th>删除</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach  items="${info.list }" var="i">
        
        <tr>
          <td><input type="checkbox" name="id" value="${i.speaker_id }"></td>
          <td>${i.speaker_id } </td>
          <td>${i.speaker_name } </td>
          <td>${i.speaker_job }</td>
          
          <td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">${i.speaker_desc }</td>
          <td><a href="speakerById?id=${i.speaker_id }" >✎</a></td>
          <td><a  onclick="delCourseById(${i.speaker_id },'${ i.speaker_name}')"  >X</a></td>
          </tr>
        </c:forEach>
        
        
        
        <tr><td colspan="2">
        <font>总共${info.total }条数据,共${info.pages }页,当前第${info.pageNum }页</font>
	
        </td>
        </tr>
        
         <input type="text" name="speaker_name" value="${name2 }">
         <input type="submit" value="查询">
    
       <a href="adminspeakershow?n=1">首页</a>
       <c:if test="${info.pageNum>1 }">
       <a href="adminspeakershow?n=${info.prePage }&speaker_name=${name2}">上一页</a>
       </c:if>
       <c:forEach items="${info.navigatepageNums }" var="a">
       <a href="adminspeakershow?n=${a }">${a }</a>
       </c:forEach>
       <c:if test="${info.pageNum<=info.pages-1 }">
       <a href="adminspeakershow?n=${info.nextPage }&speaker_name=${name2}">下一页</a>
       </c:if>
       <a href="adminspeakershow?n=${info.pages }">尾页</a>
        </tbody>
        
      </table>
    
	</div>
	 
	  </form>
		
	 

        
  

<div id="modal-background" class=""></div><div id="confirm-modal" class="modal fade role=" dialog"="" tabindex="-1"><div class="modal-dialog modal-undefined"><div class="modal-content"><div class="modal-header"><button id="modal-upper-close" class="close modal-close" aria-label="Close" type="button"><span aria-hidden="true">×</span></button><h4 id="modal-title" class="modal-title">Modal Title</h4></div><div id="modal-body" class="modal-body"> Modal Message </div><div id="modal-footer" class="modal-footer"></div></div></div></div><div id="modal-background" class=""></div>

<<script type="text/javascript">
	
		/* function showAddPage(){
			location.href="Course/addCourse.do";
		} */
	
		function delCourseById(id,title){
			Confirm.show('温馨提示：', '确定要删除'+title+'么？', {
				'Delete': {
					'primary': true,
					'callback': function() {
						var param={"id":id}; 
						$.post("speakerdelete",param,function(data){
							if(data=='success'){
								/* Confirm.show('温馨提示：', '删除成功'); */
								/* location.href="videoShow3?name="+name+"&n="+num; */
								
							}else{
								/* Confirm.show('温馨提示：', '操作失败'); */
								Confirm.show('温馨提示：', '删除成功');
								location.href="adminspeakershow";
							}
						});
					}
				}
			});
		}
		
	</script>
	

</body></html>