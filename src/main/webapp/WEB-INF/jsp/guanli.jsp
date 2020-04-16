<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'guanli.jsp' starting page</title>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.11.0.js" ></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div><h2>图书系统管理员欢迎你</h2></div>
		<div class="table">
			<table>
				<tr><td><h2>图书详情列表</h2></td></tr>
				<tr><td>书名</td><td>作者</td><td>出版社</td><td>出版日期</td><td>页数</td><td>价格</td><td>内容摘要</td><td>操作</td></tr>
				<c:forEach items="${paging.list}" var="ll">
				<tr><td>${ll.name}</td><td>${ll.author}</td><td>${ll.publish}</td><td>${ll.publishdate}</td><td>${ll.page}</td><td>${ll.price}</td><td>${ll.content}</td><td><a href="update.action?id=${ll.id}" >修改</a><a ss="${ll.id}" id="dele">删除</a></td></tr>
				</c:forEach>
			</table>
			<div>
			<input type="button" value="添加图书" onclick="window.location.href='add.jsp'"><span>${paging.cpage }/${paging.allpage }</span> <a id="first" ss=${paging.cpage }>首页</a> <a ss=${paging.cpage } id="next">下一页</a> <a id="on" ss=${paging.cpage }>上一页</a> <a id="last" ss=${paging.allpage }>末页</a>
			</div>
		</div>
  </body>
  <script type="text/javascript">
  $(document).ready(function(){
  		$(".table").on("click","#dele",function(){
  		alert("");
  			if(confirm("你确定要删除吗")){
  			alert($("#dele").attr("ss"))
  				window.location.href="dele.action?id="+$("#dele").attr("ss");
  			}
  		
  		});
  		$("#first").click(function(){
  			var cpage=Number($(this).attr("ss"));
  			if(cpage==1){
  				alert("这已经是首页了")
  			}else{
  				window.location.href="fenye.action?id=1";
  			}
  		});
  		
  		$("#on").click(function(){
  			var cpage=Number($(this).attr("ss"));
  			if((cpage-1)<=0){
  				alert("这已经是首页了")
  			}else{
  				window.location.href="fenye.action?id="+(cpage-1);
  			}
  		});
  		$("#next").click(function(){
  			var cpage=Number($(this).attr("ss"));
  			var allpage=Number($("#last").attr("ss"));
  			if((cpage+1)>allpage){
  				alert("这已经是最后一页了")
  			}else{
  				window.location.href="fenye.action?id="+(cpage+1);
  			}
  		});
  		$("#last").click(function(){
  			var cpage=Number($("#on").attr("ss"));
  			var allpage=Number($(this).attr("ss"));
  			if(cpage==allpage){
  				alert("这已经是最后一页了")
  			}else{
  				window.location.href="fenye.action?id="+allpage;
  			}
  		});
  
  });
  
  </script>
</html>
