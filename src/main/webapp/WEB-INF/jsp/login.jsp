<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/4/13
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/login.css" />
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.11.0.js" ></script>
    <title></title>
</head>
<body>
<form action="loginU" method="post" name="tab" id="tib">
    <div class="box">
        <div id="tittle"><h2 align="center">图书管理系统</h2></div>
        <p class="input_box">
            账户： <input id="name" type="text" placeholder="请输入您的昵称"><span id="name1"></span>
        </p>
        <p class="input_box">
            密码： <input id="password" type="password" placeholder="请设置您的密码"><span id="password1"></span>
        </p>
        <div id="error_box"><br></div>
        <div class="button"><button id="sb">立即登录</button></div>
    </div>
</form>
</body>
<script language="javascript">
    $(document).ready(function(){

        $("#sb").click(function(){
            var name=$("#name").val();
            alert(name);
            var password=$("#password").val();
            alert(password);

            //var dz=$("#tib").attr("action");
            $.ajax({
                url: "loginU",
                data: {name:name,password:password},
                dateType: "json",
                type: "post",
                success: function(){

                }

            });
        });
    });
</script>
</html>


