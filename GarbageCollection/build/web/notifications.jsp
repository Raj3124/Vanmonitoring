<%-- 
    Document   : notifications
    Created on : Mar 24, 2018, 12:55:15 AM
    Author     : RAJ
--%>

<%@page import="java.sql.*"%>
<html>

    <head>
        <title> Notifications </title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <script src="https://www.gstatic.com/firebasejs/4.9.1/firebase-app.js"></script>
        <script src="https://www.gstatic.com/firebasejs/4.9.1/firebase-auth.js"></script>
        <script src="https://www.gstatic.com/firebasejs/4.9.1/firebase-database.js"></script>
        <script src="https://www.gstatic.com/firebasejs/4.9.1/firebase-firestore.js"></script>
        <script src="https://www.gstatic.com/firebasejs/4.9.1/firebase-messaging.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-growl/1.0.0/jquery.bootstrap-growl.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="notifications.js"></script>
        <style>
            #headtitle {
                margin-top: 100px;
                text-align: center;
            }

            #wrapper {
                padding-left: 0;
                -webkit-transition: all 0.5s ease;
                -moz-transition: all 0.5s ease;
                -o-transition: all 0.5s ease;
                transition: all 0.5s ease;
                position: relative;
            }

            #map {
                margin-top: 50px;
                margin-bottom: 0;
                height: 95%;
                /*width:100%;*/
            }

            #wrapper.toggled {
                padding-left: 250px;
            }

            #sidebar-wrapper {
                position: fixed;
                left: 250px;
                z-index: 1000;
                overflow-y: auto;
                margin-left: -250px;
                width: 0;
                height: 100%;
                background: #000;
                -webkit-transition: all 0.5s ease;
                -moz-transition: all 0.5s ease;
                -o-transition: all 0.5s ease;
                transition: all 0.5s ease;
            }

            #wrapper.toggled #sidebar-wrapper {
                width: 250px;
            }

            #page-content-wrapper {
                padding: 15px;
                width: 100%;
            }

            #wrapper.toggled #page-content-wrapper {
                position: absolute;
                margin-right: -250px;
            }

            /* Sidebar Styles */

            .sidebar-nav {
                position: absolute;
                top: 0;
                margin: 0;
                padding: 0;
                width: 250px;
                list-style: none;
            }

            .sidebar-nav li {
                text-indent: 20px;
                line-height: 40px;
            }

            .sidebar-nav li a {
                display: block;
                color: #999999;
                text-decoration: none;
            }

            .sidebar-nav li a:hover {
                background: rgba(255, 255, 255, 0.2);
                color: #fff;
                text-decoration: none;
            }

            .sidebar-nav li a:active,
            .sidebar-nav li a:focus {
                text-decoration: none;
            }

            .sidebar-nav>.sidebar-brand {
                height: 65px;
                font-size: 18px;
                line-height: 60px;
            }

            .sidebar-nav>.sidebar-brand a {
                color: #999999;
            }

            .sidebar-nav>.sidebar-brand a:hover {
                background: none;
                color: #fff;
            }

            @media (min-width: 768px) {
                #wrapper {
                    padding-left: 250px;
                }

                #wrapper.toggled {
                    padding-left: 0;
                }

                #sidebar-wrapper {
                    width: 250px;
                }

                #wrapper.toggled #sidebar-wrapper {
                    width: 0;
                }

                #page-content-wrapper {
                    padding: 20px;
                }

                #wrapper.toggled #page-content-wrapper {
                    position: relative;
                    margin-right: 0;
                }
            }
        </style>
    </head>

    <body>


        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#menu-toggle" id="menu-toggle">
                        <span class="glyphicon glyphicon-list"></span>
                    </a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#">
                                <span class="glyphicon glyphicon-home"></span> Home</a>
                        </li>
                        <li>
                            <a href="notifications.jsp">
                                <span class="glyphicon glyphicon-bell"></span> Notifications </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="glyphicon glyphicon-off"></span> Log Out</a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>
        <script>
            $("#menu-toggle").click(function (e) {
                e.preventDefault();
                $("#wrapper").toggleClass("toggled");
            });
        </script>
        <div id="wrapper" class="toggled">
            <div class="container-fluid">
                <!-- Sidebar -->
                <div id="sidebar-wrapper">
                    <ul class="sidebar-nav">
                        <li class="sidebar-brand">
                            <br>
                        </li>
                        <li class="sidebar-brand">
                            <a href="#" class="navbar-brand">
                                <span class="glyphicon glyphicon-user" aria-hidden="true"></span> Profile
                            </a>
                        </li>
                        <li>
                            <a href="dashboard.jsp">
                                <span class="glyphicon glyphicon-home"></span> Home</a>
                        </li>
                        <li>
                            <span class="glyphicon glyphicon-search"></span>
                            <font color="#337AB7"> CITIZEN SECTION</font>
                        </li>
                        <li>
                            <a href="#">
                                <span class="glyphicon glyphicon-tasks"></span> Citizen's Complaints </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="glyphicon glyphicon-stats"></span> Citizen's Suggestions </a>
                        </li>
                        <li>
                            <span class="glyphicon glyphicon-search"></span>
                            <font color="#337AB7"> DRIVER SECTION</font>
                        </li>
                        <li>
                            <a href="drivers.jsp">
                                <span class="glyphicon glyphicon-user"></span> Add Driver </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="glyphicon glyphicon-envelope"></span> Driver's SOS </a>
                        </li>
                    </ul>
                </div>

                <!--        //////////////////// write code in between these //////////////////-->
                <%
                    String citizencomplaint = "select * from instantcomplaint";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vanmonitoring", "root", "Rajmj3113");
                    ResultSet rs1, rs2;
                    Statement ps1, ps2;
                    ps1 = con.createStatement();
                    rs1 = ps1.executeQuery(citizencomplaint);
                %>
                <div id="map">
                    <h1 style="margin-top:67px;text-align: center;font-style: italic;font-family: cursive"> Citizen Complaints </h1>
                    <hr>
                    <div class="table table-striped">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <!--<th>Lastname</th>-->
                                    <th>Address</th>
                                    <th>Phone number</th>
                                    <th>Complaint</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>

                                <%
                                    while (rs1.next()) {
                                        String complaintId = rs1.getString(1);
                                        String citizenId = rs1.getString(2);
                                        String citizen = "select name,address,phone from citizen where id=" + citizenId;
                                        ps2 = con.createStatement();
                                        rs2 = ps2.executeQuery(citizen);
                                        rs2.next();
                                %>
                                <tr>
                                    <td>
                                        <% out.println(rs2.getString(1));%>
                                    </td>
                                    <td>
                                        <% out.println(rs2.getString(2));%>
                                    </td>
                                    <td>
                                        <% out.println(rs2.getString(3));%>
                                    </td>
                                    <td>
                                        <% out.println(rs1.getString(3));%>
                                    </td>
                                    <td>
                                        <%
                                            int i = Integer.parseInt(rs1.getString(4));
                                            if (i == 1) {
                                                out.println("<label>Resolved<label>&nbsp<span class='glyphicon glyphicon-ok' style='color:green' </span> <td>");
                                                %>
                                               <td> <button type="submit" class="btn btn-primary" onClick="document.location.href = 'UpdateToUnresolve.jsp?id=<%=complaintId%>';">Mark Resolved</button><td>
                                        <%
                                            } else if (i == 0) {
                                                out.println("<label>Unresolved<label>&nbsp<span class='glyphicon glyphicon-warning-sign' style='color:red'</span><td>");
                                        %>
                                        <td><button type="submit" class="btn btn-primary" onClick="document.location.href = 'UpdateResolve.jsp?id=<%=complaintId%>';">Mark Resolved</button></td>
                                        <%
                                            }
                                        %>
                                    </td>
                                <tr>
                                    <%  }
                                    %>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!--///////////////////-->
            </div>
        </div>

        <!-- /#wrapper -->
    </body>

</html>