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
<script src="<%=basePath%>bootstrap/js/index.js"></script>

<title>My JSP 'update2.jsp' starting page</title>

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
				<a href="login_admin.jsp">注销</a>
			</div>
		</div>
	</div>
	<div class="middle">
		<div class="cont">
			<div class="class">
				<ul>
					<h3 style="color:#FFF;">后台管理</h3>
					<a href="index_admin.jsp"><li>用户管理</li></a>
					<a href="sale_admin.jsp"><li>车站售票信息管理</li></a>
					<a href="back_admin.jsp"><li>退票情况管理</li></a>
				</ul>
			</div>
			<div class="class_a">
				<div class="all1">
					<center>
						<h4>修改后的用户信息：</h4>
					</center>
					<table width="800" height="300"
						style="margin:auto; margin-top:50px; border:1px solid #FFF;"
						border="1" cellpadding="0" cellspacing="0">
						<tr>
							<th width="120">姓名</th>
							<th width="120">密码</th>
							<th width="120">用户类型</th>
						</tr>
						<%
							request.setCharacterEncoding("utf-8");
							ResultSet rs = null;
							String name1 = request.getParameter("name_update");
							out.println(name1);
							String psw1 = request.getParameter("psw_update");
							String type1 = request.getParameter("type_update");
							Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
							Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=OT", "sa",
									"123456");
							Statement stmt = con.createStatement();
							String sql = "update Ticket_user set password=?,user_type=?  where user_name=? ";
							PreparedStatement ps = con.prepareStatement(sql);
							ps.setString(1, psw1);
							ps.setString(2, type1);
							ps.setString(3, name1);
							int i = ps.executeUpdate();
							String sql1 = "select * from [OT].[dbo].[Ticket_user] where user_type!='admin'";
							rs = stmt.executeQuery(sql1);
							while (rs.next()) {
						%>
						<tr>
							<td><%=rs.getString("user_name")%></td>
							<td><%=rs.getString("password")%></td>
							<td><%=rs.getString("user_type")%></td>
						</tr>
						<%
							}
							rs.close();
							stmt.close();
							con.close();
						%>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
