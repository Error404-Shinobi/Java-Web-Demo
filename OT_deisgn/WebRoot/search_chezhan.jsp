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
    <link href="<%=basePath%>bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>bootstrap/css/index.css"/>

    <script src="<%=basePath%>bootstrap/js/jquery.min.js"></script>
    <script src="<%=basePath%>bootstrap/js/index.js"></script>

    <title>My JSP 'search_chezhan.jsp' starting page</title>

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
            <a href="index.jsp" title="?????????"><img src="img/logo1.png" width="350" height="60"/></a>
        </div>
        <div class="headlink">
            <a href="login.jsp">??????</a>
            &nbsp;|&nbsp;
            <a href="reg_user.jsp">??????</a>
            &nbsp;|&nbsp;
            <a href="login_admin.jsp">???????????????</a>
        </div>
    </div>
</div>
<div class="middle">
    <div class="cont">
        <div class="class">
            <ul>
                <h3 style="color:#FFF;">????????????</h3>
                <a href="index.jsp">
                    <li>????????????</li>
                </a>
                <a href="ticket_search.jsp">
                    <li>??????????????????</li>
                </a>
                <a href="search_checi.jsp">
                    <li>??????????????????</li>
                </a>
                <a href="search_chezhan.jsp">
                    <li>??????????????????</li>
                </a>
                <a href="note.jsp">
                    <li>??????</li>
                </a>
            </ul>
        </div>
        <div class="class_a">
            <div class="all1">
                <h4 style="color:#fff">????????????</h4>
                <form id="get" name="get" action="search_chezhan.jsp" method="post">
                    <div class="nagv ml-5">
                        <a href="ticket_search.jsp">??????????????????</a>
                        <a href="search_checi.jsp">??????????????????</a>
                        <a href="search_chezhan.jsp">??????????????????</a>
                        <a href="index.jsp">?????????</a>
                        <br><br>
                        <div class="aul">
                            <br>
                            <div class="float-left">????????????<input name="startStation" type="text" placeholder="??????"></div>
                            <br><br><br>
                            <div class="float-left">????????????<input name="arriveStation" type="text" placeholder="??????"></div>
                            <br><br><br>
                            <div class="float-left">???&nbsp;&nbsp;&nbsp;&nbsp;??????<input name="date" type="text"
                                                                                      placeholder="2020-10-19"></div>
                            <br><br><br>
                            <div class="float-left"><input type="submit" value=" ???????????? " class="button"></div>
                        </div>
                    </div>
                </form>
                <br><br><br><br><br><br><br><br><br><br>
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="ml-5">
                    <tbody>
                    <tr class="head">
                        <td>&nbsp;</td>
                        <td>?????????</td>
                        <td>?????????</td>
                        <td>??????</td>
                        <td>????????????</td>
                        <td>??????</td>
                        <td>????????????</td>
                        <td>??????</td>
                        <td>??????</td>
                        <td>??????</td>
                        <td>??????</td>
                        <td>&nbsp;</td>
                    </tr>
                    <%
                        String start1 = request.getParameter("startStation");
                        String end1 = request.getParameter("arriveStation");
                        ResultSet rs = null;
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=OT", "sa", "123456");
                        Statement stmt = con.createStatement();
                        String i = "select * from [OT].[dbo].[Ticket_order] where start_station_name=";
                        String j = "select * from [OT].[dbo].[Ticket_order] where end_station_name=";
                        String sql = j + "'" + end1 + "'";
                        rs = stmt.executeQuery(sql);
                        while (rs.next()) {
                    %>
                    <tr>
                        <td>&nbsp;</td>
                        <td><%=rs.getString("start_station_name") %>
                        </td>
                        <td><%=rs.getString("end_station_name") %>
                        </td>
                        <td><%=rs.getString("train_name") %>
                        </td>
                        <td><%=rs.getString("start_time") %>
                        </td>
                        <td><%=rs.getString("carriage") %>
                        </td>
                        <td><%=rs.getString("seat_type") %>
                        </td>
                        <td><%=rs.getString("seat_location") %>
                        </td>
                        <td><%=rs.getString("sale") %>
                        </td>
                        <td><%=rs.getString("ticket_left") %>
                        </td>
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
        <div class="foot">
            <p>XD, Inc.</p>
        </div>
    </div>
</div>
</body>
</html>
