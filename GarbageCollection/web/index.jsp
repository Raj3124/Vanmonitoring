<html>
<head>
<title>Login </title>
<!--        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://www.gstatic.com/firebasejs/4.9.1/firebase-app.js"></script>
        <script src="https://www.gstatic.com/firebasejs/4.9.1/firebase-auth.js"></script>
        <script src="https://www.gstatic.com/firebasejs/4.9.1/firebase-database.js"></script>
        <script src="https://www.gstatic.com/firebasejs/4.9.1/firebase-firestore.js"></script>
        <script src="https://www.gstatic.com/firebasejs/4.9.1/firebase-messaging.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-growl/1.0.0/jquery.bootstrap-growl.min.js"></script>

<style>
	
#wrapper {
    padding-left: 0;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
}
   #map {
height: 100%;
/*width:100%;*/
            }

#wrapper.toggled {
    padding-left: 250px;
}
body{
    overflow: hidden;
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
</style>-->
</head>
<body>
<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-growl/1.0.0/jquery.bootstrap-growl.min.js"></script>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#menu-toggle" id="menu-toggle"><span class="glyphicon glyphicon-list" aria-hidden="true"></span></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span> Messages </a></li>
             	<li><a href="#"><span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span> Help</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-off" aria-hidden="true"></span> Log Out</a></li>
            </ul>
            <form class="navbar-form navbar-right" action="#" method="GET">
           		<div class="input-group">
					<input type="text" class="form-control" placeholder="Search..." id="query" name="search" value="">
                  	<div class="input-group-btn">
                    	<button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-search"  style="font-size:20px;"></span></button>
                  	</div>
				</div>
            </form>
        </div>
    </div>
</nav>
<script> 
$("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    }); 
    
  
</script>
<div id="wrapper" class="toggled">
    <div class="container-fluid">
         Sidebar 
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
              	<li class="sidebar-brand">
                    <br>
                </li>
                <li class="sidebar-brand">
                    <button class="error btn btn-danger">Error</button>
                </li>
                 
                <li class="sidebar-brand">
                    <a href="#" class="navbar-brand">
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span> Profile
                    </a>
                </li>
                <li>
                    <a href="#"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a>
                </li>
                 <li>
                    <a href="#"><span class="glyphicon glyphicon-search" aria-hidden="true"></span> Search</a>
                </li>                
                <li>
                    <span class="glyphicon glyphicon-search" aria-hidden="true"></span><font color="#337AB7"> STATISTICS</font>
                </li>
                <li>
                    <a href="#"><span class="glyphicon glyphicon-tasks" aria-hidden="true"></span> Reports</a>
                </li>
                <li>
                    <a href="#"><span class="glyphicon glyphicon-stats" aria-hidden="true"></span> Statistic</a>
                </li>
                <li>
                    <span class="glyphicon glyphicon-search" aria-hidden="true"></span><font color="#337AB7"> ADMINISTRATION</font>
                </li>
                <li>
                    <a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Users</a>
                </li>
              	<li>
                    <a href="#"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Messages</a>
                </li>
            </ul>
        </div>

        //////////////////// write code in between these //////////////////
    <div id="map" ></div>   

    <script src="map-js.js"></script>
    <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC_PxyALiG_az7gA06dqHyo0FiBeZMfAKI&callback=initialize">
    </script>
    
  
</div>

</div>-->

<!-- /#wrapper -->

<a href="dashboard.jsp"> Login and redirect to dashboard </a>

</body>
</html>