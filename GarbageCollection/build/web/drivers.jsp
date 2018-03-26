<%--
    Document   : drivers
    Created on : Mar 17, 2018, 1:11:45 PM
    Author     : RAJ
--%>

<html>
    <head>
        <title> All vehicles </title>
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
        <style>

            #headtitle{
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

            .sidebar-nav > .sidebar-brand {
                height: 65px;
                font-size: 18px;
                line-height: 60px;
            }

            .sidebar-nav > .sidebar-brand a {
                color: #999999;
            }

            .sidebar-nav > .sidebar-brand a:hover {
                background: none;
                color: #fff;
            }

            @media (max-width: 768px) {
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
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"  aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#menu-toggle" id="menu-toggle"><span class="glyphicon glyphicon-list"></span></a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-question-sign"></span> Messages </a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-question-sign"></span> Help</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-off"></span> Log Out</a></li>
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
                            <a href="dashboard.jsp"><span class="glyphicon glyphicon-home"></span> Home</a>
                        </li>
                        <li>
                            <a href="#"><span class="glyphicon glyphicon-search"></span> Search</a>
                        </li>                
                        <li>
                            <span class="glyphicon glyphicon-search"></span><font color="#337AB7"> STATISTICS</font>
                        </li>
                        <li>
                            <a href="#"><span class="glyphicon glyphicon-tasks"></span> Reports</a>
                        </li>
                        <li>
                            <a href="#"><span class="glyphicon glyphicon-stats"></span> Statistic</a>
                        </li>
                        <li>
                            <span class="glyphicon glyphicon-search"></span><font color="#337AB7"> ADMINISTRATION</font>
                        </li>
                        <li>
                            <a href="drivers.jsp"><span class="glyphicon glyphicon-user"></span> Drivers</a>
                        </li>
                        <li>
                            <a href="#"><span class="glyphicon glyphicon-envelope"></span> Messages</a>
                        </li>
                    </ul>
                </div>

                <!--        //////////////////// write code in between these //////////////////-->

                <div id="headtitle"> 
                    <h1><label> Enter Driver Information</label></h1><hr>
                </div>
                <div id="map">
                    <div class="container">
                        <div class="row">
                            <div class="Absolute-Center is-Responsive">
                                <div id="logo-container"></div>
                                <div class="col-sm-12 col-md-10 col-md-offset-1">
                                    <form id="loginForm" action="">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <input class="form-control" type="text" id="name" placeholder="Driver Name" required/>          
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                            <input class="form-control" type="text" id="vno" placeholder="Vehicle Number" required/>
                                        </div>
                                        <div class="form-group input-group">

                                            <select id="loca" required>
                                                <option value="0"> Select Location </option>
                                                <option value="1"> Bhawarkua </option>
                                                <option value="2"> LIG </option>
                                                <option value="3"> Lavlakkha </option>
                                                <option value="4"> Vijay Nagar </option>
                                                <option value="5"> SGSITS </option>
                                                <option value="6"> abc </option>
                                                <option value="7"> xyz </option>
                                                <option value="8"> adasd </option>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <input type="submit" class="btn btn-def btn-block" onClick="firebaseInsert();">
                                        </div>    
                                    </form>        
                                </div>  
                            </div>    
                        </div>
                    </div>
                </div>
                <!--///////////////////-->    
            </div>
        </div>
        <script>

            var config = {
                apiKey: "AIzaSyCd18TubxogItKjriyW1pMeU_FnaLJnRLM",
                authDomain: "swachbharat-e438a.firebaseapp.com",
                databaseURL: "https://swachbharat-e438a.firebaseio.com",
                projectId: "swachbharat-e438a",
                storageBucket: "swachbharat-e438a.appspot.com",
                messagingSenderId: "674124402508"
            };
            firebase.initializeApp(config);
            var ref = firebase.database().ref("Driver");

            function firebaseInsert() {
                ref.push().set({
                    name: document.getElementById("name").value,
                    vehiclenumber: document.getElementById("vno").value,
                    area: document.getElementById("loca").value
                });
                alert("Vehicle Successfully Added")
            }


        </script>
        <!-- /#wrapper -->
    </body>
</html>
