<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<link href="<%=basePath%>css/signin.css" rel="stylesheet">
<link href="<%=basePath%>bootstrap/css/bootstrap.css" type="text/css"
	rel="stylesheet">
<title>在线售票</title>
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
	<div class="contain-fluid bg-success text-white">
		<div class="row">
			<center>
				<h2>欢迎使用在线售票系统！</h2>
			</center>
		</div>
		<div class="span12">
			<ul class="breadcrumb bg-success">
				<li><a href="login.jsp" class="btn btn-default">登录</a><span
					class="divider">&nbsp;|&nbsp;</span></li>
				<li><a href="reg_user.jsp" class="btn btn-default">注册</a><span
					class="divider">&nbsp;|&nbsp;</span></li>
				<li><a href="login_admin.jsp" class="btn btn-default">管理员登录</a>
				</li>
			</ul>
		</div>
		<!--<input type = "button" value = "登陆" onclick = "window.location.href = 'login.jsp'" class="bg-success text-white">&nbsp;
  		|&nbsp; 此处可根据index改进
  		<input type = "button" value = "注册" onclick = "window.location.href = 'reg.jsp'" class="bg-success text-white">
  		<div class="d-flix align-self-center float-right"><input type = "button" value = "管理员登录" onclick = "window.location.href = 'login_admin.jsp'" class="bg-success text-white"></div>
  		 -->
	</div>
	<div class="row">
		<img src=img/train1.jpg>
	</div>
	<hr>

</body>
</html>
