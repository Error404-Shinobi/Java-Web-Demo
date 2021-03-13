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
    <title>My JSP 'index_admin.jsp' starting page</title>
    <script src="<%=basePath%>bootstrap/js/index.js"></script>
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
<script type="text/javascript">
    function goupdate() {
        window.location = 'update.jsp';
    }

    function godelete() {
        window.location = 'delete.jsp';
    }
</script>
<div class="header">
    <div class="inner">
        <div class="logo">
            <a href="index.jsp" title="火车票"><img src="img/logo1.png"
                                                 width="350" height="60"/></a>
        </div>
        <div class="headlink">
            <a href="login_admin.jsp">注销</a> |
            <a href="login.jsp">用户登录</a> |
            <a href="index.jsp">用户界面</a>
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
                <h4 style="color:#fff">用户管理</h4>
                <table width="800" height="300"
                       style="margin:auto; margin-top:50px; border:1px solid #FFF;"
                       border="1" cellpadding="0" cellspacing="0">
                    <tr>
                        <th width="120">姓名</th>
                        <th width="120">密码</th>
                        <th width="120">用户类型</th>
                        <th width="120">操作</th>
                    </tr>
                    <%
                        ResultSet rs = null;
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=OT", "sa", "123456");
                        Statement stmt = con.createStatement();
                        String sql = "select * from [OT].[dbo].[Ticket_user] where user_type!='admin'";
                        rs = stmt.executeQuery(sql);
                        while (rs.next()) {
                    %>
                    <tr>
                        <td><%=rs.getString("user_name") %>
                        </td>
                        <td><%=rs.getString("password") %>
                        </td>
                        <td><%=rs.getString("user_type") %>
                        </td>
                        <td><input type="button" onclick="goupdate()" value="修改"
                                   style=" background:rgba(0, 161, 255,0.8)">&nbsp;|&nbsp;<input
                                type="button" onclick="godelete()" value="删除"
                                style=" background:rgba(0, 161, 255,0.8)"></td>
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
        <div class="foot">
            <p>XD, Inc.</p>
        </div>
    </div>
</div>
</body>
</html>
