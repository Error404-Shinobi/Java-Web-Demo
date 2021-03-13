<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<link href="bootstrap/css/style.css" type="text/css" rel="stylesheet">

<title>管理员登录</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
body {
	color: #fff;
	font-family: "微软雅黑";
	font-size: 14px;
	background: url(img/bg.jpg)
}

.wrap1 {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	margin: auto
} /*把整个屏幕真正撑开--而且能自己实现居中*/
.main_content {
	background: url(img/main_bg.png) repeat;
	margin-left: auto;
	margin-right: auto;
	text-align: left;
	float: none;
	border-radius: 8px;
}

.form-group {
	position: relative;
}

.login_btn {
	display: block;
	background: #3872f6;
	color: #fff;
	font-size: 15px;
	width: 100%;
	line-height: 50px;
	border-radius: 3px;
	border: none;
}

.login_input {
	width: 100%;
	border: 1px solid #3872f6;
	border-radius: 3px;
	line-height: 40px;
	padding: 2px 5px 2px 30px;
	background: white;
}

.icon_font {
	position: absolute;
	bottom: 15px;
	left: 10px;
	font-size: 18px;
	color: #3872f6;
}

.font16 {
	font-size: 16px;
}

.mg-t20 {
	margin-top: 20px;
}

@media ( min-width :200px) {
	.pd-xs-20 {
		padding: 20px;
	}
}

@media ( min-width :768px) {
	.pd-sm-50 {
		padding: 50px;
	}
}
</style>
</head>

<body>
	<div class="container warp1" style="height:450px;">
		<h2 class="mg-b20 text-center">售票后台管理系统</h2>
		<div
			class="col-sm-8 col-md-5 center-auto pd-sm-50 pd-xs-20 main_content">
			<p class="text-center font16">管理员登录</p>
			<form method="post" action="login_check1.jsp">
				<div class="form-group mg-t20">
					<i class="icon-user icon_font"></i> <input type="text"
						class="login_input" name="account_admin" placeholder="请输入用户名" />
				</div>
				<div class="form-group mg-t20">
					<i class="icon-lock icon_font"></i> <input type="password"
						class="login_input" name="Password1" placeholder="请输入密码"
						class="text-white" />
				</div>
				<div class="checkbox mg-b25">
					<label> <input type="checkbox" />记住我的登录信息
					</label>
				</div>
				<input type="submit" class="login_btn" value="登 录">
			</form>
		</div>
	</div>
</body>
</html>
