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

<title>My JSP 'login_check1.jsp' starting page</title>

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
    String users=request.getParameter("account_admin");
    String pass=request.getParameter("Password1");
    boolean flag=false; 
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=OT","sa","123456");
	String sql="select * from Ticket_user where user_name=? and password=? and user_type='admin'";
    PreparedStatement ps=con.prepareStatement(sql);
    ps.setString(1,users);
    ps.setString(2,pass);
    ResultSet rs=ps.executeQuery(); 
    if (rs.next()) {  
    flag=true;
     }
    rs.close();
    con.close();
	%>
<% if (flag==true){ %>

<jsp:forward page="index_admin.jsp" />

<%} 

else

if (flag==false){

%>
<script type="text/javascript">
    alert('账号密码错误，请重新登录');
    window.location.href="login_admin.jsp";</script>
<%} %>
<body>
	This is my JSP page.
	<br>
</body>
</html>
