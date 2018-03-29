<%-- 
    Document   : UpdateToUnresolve
    Created on : Mar 30, 2018, 12:36:28 AM
    Author     : RAJ
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
    String UpdateResolve = "update instantcomplaint set is_resolved=0 where id="+id;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vanmonitoring", "root", "Rajmj3113");
    PreparedStatement ps1;
    ps1 = con.prepareStatement(UpdateResolve);
    ps1.executeUpdate();
    response.sendRedirect("notifications.jsp");

%>
