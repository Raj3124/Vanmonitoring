<%-- 
    Document   : newjsp
    Created on : Feb 28, 2018, 10:35:52 PM
    Author     : Roshan
--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <style>
 body {
    font-family: "Lato", sans-serif;
    
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

#main {
    transition: margin-left .5s;
    padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

 #map {
        height: 99%;
       
      }
    </style>
  </head>
  <body> 

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <table>
      <tr>
          <td>
             <a href="#">Search </a> 
          </td>
      </tr>
      <tr>
          <td Style=" text-align: center;">
               <input type="text"><br>
          </td>
      </tr><tr>
          <td Style=" text-align: center;">
              <input type="submit" value ="go" > 
          </td>
      </tr><tr>
          <td>
              <a href="#">Suggestion</a>
          </td>
      </tr><tr>
          <td>
               <a href="#">feedback</a>
          </td>
      </tr><tr>
          <td>
                <a href="#">history</a>
          </td>
      </tr><tr>
          <td>
              
          </td>
      </tr>
  </table>
 
</div>
<div id="main">
  <span style="font-size:20px;cursor:pointer" onclick="openNav()">&#9776; </span>


<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}
</script>

    <div id="map"></div>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 8
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB3Cr9hmBWD3K_zkU65iUAhy-K8Yzhe0GE&callback=initMap"
    async defer></script>
     
</div>
</body>
</html> 
