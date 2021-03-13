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

<title>My JSP 'search_checi.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
body, td {
	font-size: 14px;
	color: #444;
	font-family: Arial, Helvetica, sans-serif;
	margin: 0
}

a {
	text-decoration: none
}

a:hover {
	color: #f30
}

form {
	
}

.aul {
	padding-left: 10px
}

.aul div {
	line-height: 200%
}

.nagv {
	width: 100%;
	height: 35px;
	background-color: #007ab5;
	margin-bottom: 5px
}

input {
	width: 200px;
	padding: 5px 2px;
	margin: 3px 0
}

.nagv a {
	font-size: 14px;
	padding: 10px 15px;
	display: block;
	float: left;
	text-decoration: none
}

.nagv a:link {
	color: #fff
}

.nagv a:visited {
	color: #fff
}

.nagv a:hover {
	color: #eee;
	background-color: #00496d
}

.nagv a:active {
	color: #fff
}

table .head {
	height: 30px;
	background-color: #007ab5
}

table .head td {
	color: #fff;
	padding: 5px
}

input {
	border-style: none;
	background-color: #ADD8E6
}
</style>
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
					<h4 style="color:#fff">车次查询</h4>
					<form id="get" name="get" action="search_checi.jsp" method="post">
						<div class="nagv ml-5">
							<a href="ticket_search.jsp">火车余票查询</a> <a href="search_checi.jsp">火车车次查询</a>
							<a href="index.jsp">回首页</a> <br> <br>
							<div class="aul">
								<br>
								<div class="float-left">
									车次：<input name="checi" type="text" id="checi"
										placeholder="k110">
								</div>
								<br> <br> <br>
								<div class="float-left">
									日期：<input name="date" type="text" id="date"
										placeholder="2020-10-19">
								</div>
								<br> <br> <br>
								<div class="float-left">
									<input type="submit" value=" 提交查询 " class="button"
										style=" background:rgba(0, 161, 255,0.8)">
								</div>
								<br> <br> <br>
							</div>
						</div>
					</form>
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br>
					<table width="100%" border="0" cellpadding="0" cellspacing="0"
						class="ml-5">
						<tbody>
							<tr class="head">
								<td>&nbsp;</td>
								<td>车次</td>
								<td>火车类型</td>
								<td>始发站</td>
								<td>终点站</td>
								<td>发车时间</td>
								<td>&nbsp;</td>
							</tr>
							<%
								String checi1 = request.getParameter("checi");
								ResultSet rs = null;
								Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
								Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=OT", "sa",
										"123456");
								Statement stmt = con.createStatement();
								String i = "select * from [OT].[dbo].[Ticket_train] where train_name=";
								String sql = i + "'" + checi1 + "'";
								rs = stmt.executeQuery(sql);
								while (rs.next()) {
							%>
							<tr>
								<td>&nbsp;</td>
								<td><%=rs.getString("train_name")%></td>
								<td><%=rs.getString("train_type")%></td>
								<td><%=rs.getString("train_start_station")%></td>
								<td><%=rs.getString("train_end_station")%></td>
								<td><%=rs.getString("train_start_time")%></td>
								<td>&nbsp;</td>
							</tr>
							<%
								}
								rs.close();
								stmt.close();
								con.close();
							%>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="foot">
		<p>XD, Inc.</p>
	</div>
</body>
</html>
