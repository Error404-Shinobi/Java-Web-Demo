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
    <title>My JSP 'sale_admin.jsp' starting page</title>

    <script src="<%=basePath%>bootstrap/js/index.js"></script>
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
                <h4 style="color:#fff">售票信息管理</h4>
                <table width="900" height="300"
                       style="margin:auto; margin-top:50px; border:1px solid #FFF;"
                       border="1" cellpadding="0" cellspacing="0">
                    <tr>
                        <th width="80">订单号</th>
                        <th width="80">乘客姓名</th>
                        <th width="80">车次</th>
                        <th width="80">出发站</th>
                        <th width="80">到达站</th>
                        <th width="80">车厢号</th>
                        <th width="80">座位类型</th>
                        <th width="80">座位号</th>
                        <th width="100">开车日期</th>
                        <th width="80">售票张数</th>
                        <th width="80">金额</th>
                        <th width="80">订单状态</th>
                    </tr>
                    <%
                        ResultSet rs = null;
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=OT", "sa", "123456");
                        Statement stmt = con.createStatement();
                        String sql = "select * from [OT].[dbo].[Ticket_order]";
                        rs = stmt.executeQuery(sql);
                        while (rs.next()) {
                    %>
                    <tr>
                        <td><%=rs.getString("order_id") %>
                        </td>
                        <td><%=rs.getString("user_name") %>
                        </td>
                        <td><%=rs.getString("train_name") %>
                        </td>
                        <td><%=rs.getString("start_station_name") %>
                        </td>
                        <td><%=rs.getString("end_station_name") %>
                        </td>
                        <td><%=rs.getString("carriage") %>
                        </td>
                        <td><%=rs.getString("seat_type") %>
                        </td>
                        <td><%=rs.getString("seat_location") %>
                        </td>
                        <td><%=rs.getString("date") %>&nbsp;</td>
                        <td><%=rs.getString("ticket_sale") %>
                        </td>
                        <td><%=rs.getString("sale") %>
                        </td>
                        <td><%=rs.getString("status") %>
                        </td>
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
