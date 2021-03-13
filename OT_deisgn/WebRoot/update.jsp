<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <link href="<%=basePath%>css/signin.css" rel="stylesheet">
    <link href="<%=basePath%>bootstrap/css/bootstrap.css" type="text/css"
          rel="stylesheet">
    <link rel="stylesheet" type="text/css"
          href="<%=basePath%>bootstrap/css/index.css"/>
    <script src="<%=basePath%>bootstrap/js/index.js"></script>

    <title>My JSP 'update.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        -->

    <style type="text/css">
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
                                                 width="350" height="60"/></a>
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
                <a href="index_admin.jsp">
                    <li>用户管理</li>
                </a>
                <a href="sale_admin.jsp">
                    <li>车站售票信息管理</li>
                </a>
                <a href="back_admin.jsp">
                    <li>退票情况管理</li>
                </a>
            </ul>
        </div>
        <div class="class_a">
            <div class="all1">
                <center>
                    <h4 style="color:#fff">请输入要修改的用户信息</h4>
                    <br>
                    <form action="update2.jsp" method="post">
                        姓名:<input type="text" name="name_update" style="color:black"><br>
                        <br> 密码:<input type="password" name="psw_update"
                                       style="color:black"> 用户类型:<input type="text"
                                                                        name="type_update" style="color:black"><br>
                        <br> <input type="submit" value="修改"
                                    style=" background:rgba(0, 161, 255,0.8)">
                    </form>
                </center>
            </div>
        </div>
        <div class="foot">
            <p>XD, Inc.</p>
        </div>
    </div>
</div>
</body>
</html>
