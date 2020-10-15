<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<a href="useradd.jsp"><img  height="60" width="60" src="3qa.jpg" /></a>  <a href="exit"><img  height="60" width="60" src="ad.jpg" /></a>
<a href="upload.jsp">上传</a> <a href="download">下载</a>
<table border="1">
<tr>
<td>ID</td>
<td>用户名</td>
<td>密码</td>
<td>钱</td>
<td>操作</td>
</tr>
<c:forEach items="${info.list }" var="i" >
<tr>

<td>${i.id }</td>
<td>${i.name }</td>
<td>${i.password }</td>
<td>${i.qian }</td>
<td>
<a href="userById?id=${i.id }" ><img  height="15" width="20" src="ae.png" /> </a>
<a href="userdelete?id=${i.id }" ><img  height="15" width="20" src="2a.jpg" /></a>
</td>
</tr>
</c:forEach>


 <%-- <c:if test="${info.total%5==0 }">
<c:set var="n" value="${info.total/5 }"></c:set>
</c:if>
<c:if test="${info.total%5!=0 }">
<c:set var="n" value="${info.total/5+1 }"></c:set>
</c:if>  --%>  


<a href="usershow?n=1">首页</a>
	<a href="usershow?n=${info.prePage}">上一页</a>
	<c:forEach items="${info.navigatepageNums}" var="a">
		<a href="usershow?n=${a}">${a}</a>
	</c:forEach>
	<a href="usershow?n=${info.nextPage}">下一页</a>
	<a href="usershow?n=${info.pages}">尾页</a>
	共${info.total}条数据，共${info.pages}页，当前为${info.pageNum}页

<!-- <form action="usershow">

</form> -->
<%--  <c:if test="${info.pageNum>1 }">
<a href="usershow?n=selectAllMH&page=${page2-1}&info.total=${info.total}">上一页</a>
</c:if>
<c:if test="${page2<=page-1 }">
<a href="user?n=selectAllMH&customer_state_namea=${customer_state_name2 }&page=${page2+1}&count${count}">下一页</a>
</c:if>  --%>
<%-- <c:if test="${page2<=page-1 }">
<a href="customer_state?n=selectAllMH&customer_state_namea=${customer_state_name2 }&page=${page2+1}&count${count}">下一页</a>
</c:if> --%>
<%-- 
<input type="text" name="customer_source_namea" class="form-control" placeholder="请输入搜索关键词" id="xx2" value="${customer_source_name2 }">
<c:if test="${page2>1 }">
<a href="usershow?n=selectAllMH&customer_state_namea=${customer_state_name2 }&page=${page2-1}&count=${count}">上一页</a>
</c:if>
<c:if test="${page2<=page-1 }">
<a href="customer_state?n=selectAllMH&customer_state_namea=${customer_state_name2 }&page=${page2+1}&count${count}">下一页</a>
</c:if> --%>

<%-- 共有${info.total}条数据,共有${info.pages }记录,当前第${ info.pageNum }页   --%>
</table>

</body>
</html>