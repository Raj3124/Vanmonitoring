package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Iterator;
import java.util.ArrayList;
import java.sql.*;

public final class history_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("        <style>\n");
      out.write("            #map{\n");
      out.write("                height: 100%;\n");
      out.write("                    width: 100%;\n");
      out.write("            }\n");
      out.write("            </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("        \n");
      out.write("        <form action=\"history.jsp\" method=\"get\">\n");
      out.write("        Vehicle Number:<input type=\"text\" name=\"vehicle_number\"/><br>\n");
      out.write("        Date:<input type=\"date\" name=\"date\" /><br>\n");
      out.write("        <input type=\"submit\" value=\"Show Route\">\n");
      out.write("        </form>\n");
      out.write("        <input type=\"button\" onClick=\"runner()\" value=\"alerts\"/>\n");
      out.write("         \n");
      out.write("    <script async defer\n");
      out.write("            src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyC_PxyALiG_az7gA06dqHyo0FiBeZMfAKI&callback=runner\">\n");
      out.write("    </script>\n");
      out.write("        ");
 
            ArrayList latitude= new ArrayList();
            ArrayList longitude= new ArrayList();
            String vehicle_number = request.getParameter("vehicle_number");
            String date = request.getParameter("date");
           Statement ps;
           ResultSet rs;
           
           String getDetails = "select * from location where vehicle_id="+vehicle_number+" limit 4";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sql12228900","sql12228900","xLQLpxLlLZ");
            
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
        
        
      out.write("\n");
      out.write("       \n");
      out.write("        <script>\n");
      out.write("            function runner(){\n");
      out.write("             \n");
      out.write("        var lats = [");
 for (int i = 0; i < latitude.size(); i++) { 
      out.write('"');
      out.print( latitude.get(i) );
      out.write('"');
      out.print( i + 1 < latitude.size() ? ",":"" );
 } 
      out.write("];\n");
      out.write("        var longs = [");
 for (int i = 0; i < longitude.size(); i++) { 
      out.write('"');
      out.print( longitude.get(i) );
      out.write('"');
      out.print( i + 1 < longitude.size() ? ",":"" );
 } 
      out.write("];\n");
      out.write("        \n");
      out.write("        alert(\"lats\"+lats);\n");
      out.write("        alert(\"longs\"+longs);\n");
      out.write("    }\n");
      out.write("        </script>\n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
