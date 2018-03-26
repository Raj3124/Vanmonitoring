<%-- 
    Document   : history
    Created on : Feb 26, 2018, 2:57:53 PM
    Author     : RAJ
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>History</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <style>
            #map{
                height: 100%;
                    width: 100%;
            }
            </style>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <form action="history.jsp" method="get">
        Vehicle Number:<input type="text" name="vehicle_number"/><br>
        Date:<input type="date" name="date" /><br>
        <input type="submit" value="Show Route">
        </form>
        <input type="button" onClick="runner()" value="alerts"/>
         
    <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC_PxyALiG_az7gA06dqHyo0FiBeZMfAKI&callback=runner">
    </script>
        <% 
            ArrayList latitude= new ArrayList();
            ArrayList longitude= new ArrayList();
            String vehicle_number = request.getParameter("vehicle_number");
            String date = request.getParameter("date");
           Statement ps;
           ResultSet rs;
           
           String getDetails = "select * from location where vehicle_id="+vehicle_number;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12228900","sql12228900","xLQLpxLlLZ");
            
            ps = con.createStatement();
            rs = ps.executeQuery(getDetails);
         
            while (rs.next()) {
                latitude.add(rs.getString("latitude"));
                longitude.add(rs.getString("longitude"));
                
            }      
           Iterator itr1 = latitude.iterator();
           Iterator itr2 = longitude.iterator();
           
        // while loop
        while (itr1.hasNext() && itr2.hasNext()) {
        out.println("latitude= " + itr1.next());
        out.println("longitude= " + itr2.next());
        out.println("<br>");
        }
        
        %>
       
        <script>
            function runner(){
             
        var lats = [<% for (int i = 0; i < latitude.size(); i++) { %>"<%= latitude.get(i) %>"<%= i + 1 < latitude.size() ? ",":"" %><% } %>];
        var longs = [<% for (int i = 0; i < longitude.size(); i++) { %>"<%= longitude.get(i) %>"<%= i + 1 < longitude.size() ? ",":"" %><% } %>];
        
        alert("lats"+lats);
        alert("longs"+longs);
    }
        </script>
       
    </body>
</html>
