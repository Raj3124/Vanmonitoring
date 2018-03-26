package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    <style>\n");
      out.write(" body {\n");
      out.write("    font-family: \"Lato\", sans-serif;\n");
      out.write("    \n");
      out.write("}\n");
      out.write("\n");
      out.write(".sidenav {\n");
      out.write("    height: 100%;\n");
      out.write("    width: 0;\n");
      out.write("    position: fixed;\n");
      out.write("    z-index: 1;\n");
      out.write("    top: 0;\n");
      out.write("    left: 0;\n");
      out.write("    background-color: #111;\n");
      out.write("    overflow-x: hidden;\n");
      out.write("    transition: 0.5s;\n");
      out.write("    padding-top: 60px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".sidenav a {\n");
      out.write("    padding: 8px 8px 8px 32px;\n");
      out.write("    text-decoration: none;\n");
      out.write("    font-size: 25px;\n");
      out.write("    color: #818181;\n");
      out.write("    display: block;\n");
      out.write("    transition: 0.3s;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".sidenav a:hover {\n");
      out.write("    color: #f1f1f1;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".sidenav .closebtn {\n");
      out.write("    position: absolute;\n");
      out.write("    top: 0;\n");
      out.write("    right: 25px;\n");
      out.write("    font-size: 36px;\n");
      out.write("    margin-left: 50px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#main {\n");
      out.write("    transition: margin-left .5s;\n");
      out.write("    padding: 16px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("@media screen and (max-height: 450px) {\n");
      out.write("  .sidenav {padding-top: 15px;}\n");
      out.write("  .sidenav a {font-size: 18px;}\n");
      out.write("}\n");
      out.write("\n");
      out.write(" #map {\n");
      out.write("        height: 99%;\n");
      out.write("       \n");
      out.write("      }\n");
      out.write("    </style>\n");
      out.write("  </head>\n");
      out.write("  <body> \n");
      out.write("\n");
      out.write("<div id=\"mySidenav\" class=\"sidenav\">\n");
      out.write("  <a href=\"javascript:void(0)\" class=\"closebtn\" onclick=\"closeNav()\">&times;</a>\n");
      out.write("  <table>\n");
      out.write("      <tr>\n");
      out.write("          <td>\n");
      out.write("             <a href=\"#\">Search </a> \n");
      out.write("          </td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("          <td Style=\" text-align: center;\">\n");
      out.write("               <input type=\"text\"><br>\n");
      out.write("          </td>\n");
      out.write("      </tr><tr>\n");
      out.write("          <td Style=\" text-align: center;\">\n");
      out.write("              <input type=\"submit\" value =\"go\" > \n");
      out.write("          </td>\n");
      out.write("      </tr><tr>\n");
      out.write("          <td>\n");
      out.write("              <a href=\"#\">Suggestion</a>\n");
      out.write("          </td>\n");
      out.write("      </tr><tr>\n");
      out.write("          <td>\n");
      out.write("               <a href=\"#\">feedback</a>\n");
      out.write("          </td>\n");
      out.write("      </tr><tr>\n");
      out.write("          <td>\n");
      out.write("                <a href=\"#\">history</a>\n");
      out.write("          </td>\n");
      out.write("      </tr><tr>\n");
      out.write("          <td>\n");
      out.write("              \n");
      out.write("          </td>\n");
      out.write("      </tr>\n");
      out.write("  </table>\n");
      out.write(" \n");
      out.write("</div>\n");
      out.write("<div id=\"main\">\n");
      out.write("  <span style=\"font-size:20px;cursor:pointer\" onclick=\"openNav()\">&#9776; </span>\n");
      out.write("\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("function openNav() {\n");
      out.write("    document.getElementById(\"mySidenav\").style.width = \"250px\";\n");
      out.write("    document.getElementById(\"main\").style.marginLeft = \"250px\";\n");
      out.write("    document.body.style.backgroundColor = \"rgba(0,0,0,0.4)\";\n");
      out.write("}\n");
      out.write("\n");
      out.write("function closeNav() {\n");
      out.write("    document.getElementById(\"mySidenav\").style.width = \"0\";\n");
      out.write("    document.getElementById(\"main\").style.marginLeft= \"0\";\n");
      out.write("    document.body.style.backgroundColor = \"rgba(0,0,0,0.4)\";\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("    <div id=\"map\"></div>\n");
      out.write("    <script>\n");
      out.write("      var map;\n");
      out.write("      function initMap() {\n");
      out.write("        map = new google.maps.Map(document.getElementById('map'), {\n");
      out.write("          center: {lat: -34.397, lng: 150.644},\n");
      out.write("          zoom: 8\n");
      out.write("        });\n");
      out.write("      }\n");
      out.write("    </script>\n");
      out.write("    <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyB3Cr9hmBWD3K_zkU65iUAhy-K8Yzhe0GE&callback=initMap\"\n");
      out.write("    async defer></script>\n");
      out.write("     \n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html> \n");
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
