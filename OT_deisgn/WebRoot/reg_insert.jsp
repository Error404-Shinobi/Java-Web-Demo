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

<title>My JSP 'reg_insert.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
<% 
    request.setCharacterEncoding("utf-8");
    String users=request.getParameter("account");
    String pass=request.getParameter("psw1");
    boolean flag=false; 
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=OT","sa","123456");
	String sql="insert into Ticket_user(user_name,password,user_type) values(?,?,'custom')";
    PreparedStatement ps=con.prepareStatement(sql);
    ps.setString(1,users);
    ps.setString(2,pass);
    int i=ps.executeUpdate(); 
    out.println("成功添加"+i+"行");
    flag=true;
    ps.close();
    con.close();
	%>
<% if (flag==true){ %>

<jsp:forward page="index.jsp" />

<%} 

else

if (flag==false){

%>
<script type="text/javascript">
    alert('账号密码错误，请重新登录');
    window.location.href="reg_user.jsp";</script>
<%} %>
<body>
	This is my JSP page.
	<br>
</body>
</html>
