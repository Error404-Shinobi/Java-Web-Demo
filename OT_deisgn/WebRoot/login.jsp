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
<script type="text/javascript">
	function goreg(){
	window.location='reg_user.jsp';
	}
	function goindex(){
	window.location='index.jsp';
	}
	</script>
</head>

<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-auto">
				<img src="img/logo1.png" alt="logo">
			</div>
			&nbsp;
			<div class="d-flix align-self-center col-md-auto">
				<h4>欢迎登录在线售票系统</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-md-10">
				<img class="d-block w-100" alt="Carousel Bootstrap First"
					src="img/pre.jpg" />
				<address class="text-center">
					<strong>XD, Inc.</strong><br>广兰大道418号<br>南昌市青山湖区<br>
					<abbr title="Phone">电话: (123) 456-7890</abbr>
				</address>
			</div>
			<div class="col-md-2">
				<img alt="这是头像" src="img/logo2.jpg" class="rounded-circle">
				<form action="login_check.jsp" method="post">
					<div class="form-group">
						<label for="account"> 账号 </label> <input type="text"
							class="form-control" id="account">
					</div>
					<div class="form-group">
						<label for="password1"> 密码 </label> <input type="password"
							class="form-control" id="password1">
					</div>
					<div class="checkbox">
						<label> <input type="checkbox">记住密码
						</label>
					</div>
					<input type="submit" class="btn btn-block btn-outline-secondary"
						value="立即登录">

					<button type="button" class="btn btn-block btn-outline-secondary"
						onclick="goreg()">注册账号</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
