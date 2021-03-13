<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<link href="<%=basePath%>bootstrap/css/bootstrap.css" type="text/css"
	rel="stylesheet">
<title>My JSP 'reg_user.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<body onLoad="submitTest1()">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-auto">
				<img src="img/logo1.png" alt="logo">
			</div>
			&nbsp;
			<div class="d-flix align-self-center col-md-auto">
				<h4>欢迎新用户注册</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<img alt="这是头像" src="img/logo2.jpg" class="rounded-circle mx-auto">
				<form action="reg_insert.jsp" method="post"
					onsubmit="return submitTest1()">
					<div class="form-group">
						<label for="account"> 账号 </label> <input type="text"
							class="form-control" id="account" name="account">
					</div>
					<div class="form-group">
						<label for="psw1"> 密码 </label> <input type="password"
							class="form-control" id="psw1" name="psw1">
					</div>
					<div class="form-group">
						<label for="checkpsw1"> 确认密码 </label> <input type="password"
							class="form-control" id="checkpsw1">
					</div>
					<br> <input type="submit"
						class="btn btn-block btn-outline-secondary" value="立即注册">
				</form>
			</div>
		</div>

		<div class="col-md-auto">
			<address class="text-center">
				<strong>XD, Inc.</strong><br>广兰大道418号<br>南昌市青山湖区<br>
				<abbr title="Phone">电话: (123) 456-7890</abbr>
			</address>
		</div>
	</div>
	<script type="text/javascript">
		function submitTest1() {
			var usename = document.getElementById("account").value;
			//document.writeln(usename);
			var password = document.getElementById("psw1").value;
			//document.writeln(password);
			var password1 = document.getElementById("checkpsw1").value;
			if (usename.length == 0) {
				alert("用户名不能为空");
				return false;
			}
			if (usename.length < 4) {
				alert("用户名不能小于4个字符");
				return false;
			}
			if (usename.length > 20) {
				alert("用户名不能大于20个字符");
				return false;
			}
			if (password.length == 0) {
				alert("密码不能为空");
				return false;
			}
			if (password.length < 6) {
				alert("密码不能小于6个字符");
				return false;
			}
			if (password.length > 20) {
				alert("密码不能大于20个字符");
				return false;
			}
			for (var i = 0; i <= password.length; i++) {
				if (password[i] != password1[i]) {
					alert("密码和确认密码必须相同");
					return false;
				}
			}
			if (password1.length == 0) {
				alert("确认密码不能为空");
				return false;
			}
			return true;
		}
	</script>
</body>
</html>
