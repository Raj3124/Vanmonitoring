<%-- 
    Document   : UpdateResolve
    Created on : Mar 29, 2018, 11:13:12 PM
    Author     : RAJ
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
    String UpdateResolve = "update instantcomplaint set is_resolved=1 where id="+id;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vanmonitoring", "root", "Rajmj3113");
    PreparedStatement ps1;
    ps1 = con.prepareStatement(UpdateResolve);
    ps1.executeUpdate();
    response.sendRedirect("notifications.jsp");

%>