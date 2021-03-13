<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<link href="<%=basePath%>css/signin.css" rel="stylesheet">
<link href="<%=basePath%>bootstrap/css/bootstrap.css" type="text/css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>bootstrap/css/index.css" />

<script src="<%=basePath%>bootstrap/js/jquery.min.js"></script>
<script src="<%=basePath%>bootstrap/js/index.js"></script>
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
	<div class="header">
		<div class="inner">
			<div class="logo">
				<a href="index.jsp" title="火车票"><img src="img/logo1.png"
					width="350" height="60" /></a>
			</div>
			<div class="headlink">
				<a href="login.jsp">登录</a> &nbsp;|&nbsp; <a href="reg_user.jsp">注册</a>
				&nbsp;|&nbsp; <a href="login_admin.jsp">管理员登录</a>


			</div>
		</div>
	</div>
	<div class="middle">
		<div class="cont">
			<div class="class">
				<ul>
					<h3 style="color:#FFF;">栏目分类</h3>
					<a href="index.jsp"><li>申请订票</li></a>
					<a href="ticket_search.jsp"><li>火车余票查询</li></a>
					<a href="search_checi.jsp"><li>火车车次查询</li></a>
					<a href="note.jsp"><li>留言</li></a>
				</ul>
			</div>
			<div class="class_a">
				<div class="all1">
					<h4 style="color:#fff">申请订票</h4>
					<form method="post" action="">
						<table width="800" height="300"
							style="margin:auto; margin-top:50px; border:1px solid #FFF;"
							border="1" cellpadding="0" cellspacing="0">
							<tr>
								<td width="120">姓名:</td>
								<td width="277.6"><input
									style="width:250px; background:none;" type="text" /><span>*</span></td>
								<td width="120">身份证:</td>
								<td width="277.6"><input
									style="width:250px; background:none;" type="text" /><span>*</span></td>
							</tr>
							<tr>
								<td width="120">联系电话:</td>
								<td width="277.6"><input
									style="width:250px; background:none;" type="text" /><span>*</span></td>
								<td width="120">备用电话:</td>
								<td width="277.6"><input
									style="width:250px; background:none;" type="text" /></td>
							</tr>
							<tr>
								<td width="120">车次:</td>
								<td width="277.6"><select
									style="width:250px; background:none; border:0; outline:none; color:#CCC">
										<option>C6402</option>
										<option>G8708</option>
										<option>G8715</option>

								</select><span>*</span></td>
								<td width="120">起点站:</td>
								<td><input style="width:250px; background:none;"
									type="text" /><span>*</span></td>
							</tr>
							<tr>
								<td width="240">终点站:</td>
								<td><input style="width:250px; background:none;"
									type="text" /><span>*</span></td>
								<td width="120">&nbsp;</td>
								<td></td>
							</tr>
							<tr>
								<td>备注:</td>
								<td colspan="3"><textarea placeholder="有需要请详细填写！"
										style=" color:#FFF; outline:none;resize:none;width:670px; height:70px; border:0; background:none;"
										name="" cols="0" rows="0"></textarea></td>
							</tr>
						</table>
						<div class="tom" style="margin-top:20px;">
							<input style="width:80px; height:30px;" type="reset" value="清空" />

							<input style="width:80px; height:30px; " type="submit" value="预定" />

						</div>
						<span style="float:right;">注：标注*为必填项！</span>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="foot">
		<p>XD, Inc.</p>
	</div>
</body>
</html>
