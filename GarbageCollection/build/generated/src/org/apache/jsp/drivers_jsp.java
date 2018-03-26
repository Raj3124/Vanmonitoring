package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class drivers_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title> All vehicles </title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("        <script src=\"https://www.gstatic.com/firebasejs/4.9.1/firebase-app.js\"></script>\n");
      out.write("        <script src=\"https://www.gstatic.com/firebasejs/4.9.1/firebase-auth.js\"></script>\n");
      out.write("        <script src=\"https://www.gstatic.com/firebasejs/4.9.1/firebase-database.js\"></script>\n");
      out.write("        <script src=\"https://www.gstatic.com/firebasejs/4.9.1/firebase-firestore.js\"></script>\n");
      out.write("        <script src=\"https://www.gstatic.com/firebasejs/4.9.1/firebase-messaging.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-growl/1.0.0/jquery.bootstrap-growl.min.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css\">\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Montserrat\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Lato\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <style>\n");
      out.write("\n");
      out.write("            #headtitle{\n");
      out.write("                margin-top: 100px;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            #wrapper {\n");
      out.write("                padding-left: 0;\n");
      out.write("                -webkit-transition: all 0.5s ease;\n");
      out.write("                -moz-transition: all 0.5s ease;\n");
      out.write("                -o-transition: all 0.5s ease;\n");
      out.write("                transition: all 0.5s ease;\n");
      out.write("                position: relative;\n");
      out.write("            }\n");
      out.write("            #map {\n");
      out.write("                margin-top: 50px;\n");
      out.write("                margin-bottom: 0;\n");
      out.write("                height: 95%;\n");
      out.write("                /*width:100%;*/\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #wrapper.toggled {\n");
      out.write("                padding-left: 250px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #sidebar-wrapper {\n");
      out.write("                position: fixed;\n");
      out.write("                left: 250px;\n");
      out.write("                z-index: 1000;\n");
      out.write("                overflow-y: auto;\n");
      out.write("                margin-left: -250px;\n");
      out.write("                width: 0;\n");
      out.write("                height: 100%;\n");
      out.write("                background: #000;\n");
      out.write("                -webkit-transition: all 0.5s ease;\n");
      out.write("                -moz-transition: all 0.5s ease;\n");
      out.write("                -o-transition: all 0.5s ease;\n");
      out.write("                transition: all 0.5s ease;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #wrapper.toggled #sidebar-wrapper {\n");
      out.write("                width: 250px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #page-content-wrapper {\n");
      out.write("                padding: 15px;\n");
      out.write("                width: 100%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #wrapper.toggled #page-content-wrapper {\n");
      out.write("                position: absolute;\n");
      out.write("                margin-right: -250px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* Sidebar Styles */\n");
      out.write("\n");
      out.write("            .sidebar-nav {\n");
      out.write("                position: absolute;\n");
      out.write("                top: 0;\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("                width: 250px;\n");
      out.write("                list-style: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .sidebar-nav li {\n");
      out.write("                text-indent: 20px;\n");
      out.write("                line-height: 40px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .sidebar-nav li a {\n");
      out.write("                display: block;\n");
      out.write("                color: #999999;\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .sidebar-nav li a:hover {\n");
      out.write("                background: rgba(255, 255, 255, 0.2);\n");
      out.write("                color: #fff;\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .sidebar-nav li a:active,\n");
      out.write("            .sidebar-nav li a:focus {\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .sidebar-nav > .sidebar-brand {\n");
      out.write("                height: 65px;\n");
      out.write("                font-size: 18px;\n");
      out.write("                line-height: 60px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .sidebar-nav > .sidebar-brand a {\n");
      out.write("                color: #999999;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .sidebar-nav > .sidebar-brand a:hover {\n");
      out.write("                background: none;\n");
      out.write("                color: #fff;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @media (max-width: 768px) {\n");
      out.write("                #wrapper {\n");
      out.write("                    padding-left: 250px;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                #wrapper.toggled {\n");
      out.write("                    padding-left: 0;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                #sidebar-wrapper {\n");
      out.write("                    width: 250px;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                #wrapper.toggled #sidebar-wrapper {\n");
      out.write("                    width: 0;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                #page-content-wrapper {\n");
      out.write("                    padding: 20px;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                #wrapper.toggled #page-content-wrapper {\n");
      out.write("                    position: relative;\n");
      out.write("                    margin-right: 0;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <nav class=\"navbar navbar-inverse navbar-fixed-top\" role=\"navigation\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\"  aria-controls=\"navbar\">\n");
      out.write("                        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"#menu-toggle\" id=\"menu-toggle\"><span class=\"glyphicon glyphicon-list\"></span></a>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"navbar\" class=\"navbar-collapse collapse\">\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                        <li><a href=\"#\"><span class=\"glyphicon glyphicon-home\"></span> Home</a></li>\n");
      out.write("                        <li><a href=\"#\"><span class=\"glyphicon glyphicon-question-sign\"></span> Messages </a></li>\n");
      out.write("                        <li><a href=\"#\"><span class=\"glyphicon glyphicon-question-sign\"></span> Help</a></li>\n");
      out.write("                        <li><a href=\"#\"><span class=\"glyphicon glyphicon-off\"></span> Log Out</a></li>\n");
      out.write("                    </ul>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <script>\n");
      out.write("            $(\"#menu-toggle\").click(function (e) {\n");
      out.write("                e.preventDefault();\n");
      out.write("                $(\"#wrapper\").toggleClass(\"toggled\");\n");
      out.write("            });\n");
      out.write("\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("        <div id=\"wrapper\" class=\"toggled\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <!-- Sidebar -->\n");
      out.write("                <div id=\"sidebar-wrapper\">\n");
      out.write("                    <ul class=\"sidebar-nav\">\n");
      out.write("                        <li class=\"sidebar-brand\">\n");
      out.write("                            <br>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"sidebar-brand\">\n");
      out.write("                            <a href=\"#\" class=\"navbar-brand\">\n");
      out.write("                                <span class=\"glyphicon glyphicon-user\" aria-hidden=\"true\"></span> Profile\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"dashboard.jsp\"><span class=\"glyphicon glyphicon-home\"></span> Home</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"#\"><span class=\"glyphicon glyphicon-search\"></span> Search</a>\n");
      out.write("                        </li>                \n");
      out.write("                        <li>\n");
      out.write("                            <span class=\"glyphicon glyphicon-search\"></span><font color=\"#337AB7\"> STATISTICS</font>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"#\"><span class=\"glyphicon glyphicon-tasks\"></span> Reports</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"#\"><span class=\"glyphicon glyphicon-stats\"></span> Statistic</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <span class=\"glyphicon glyphicon-search\"></span><font color=\"#337AB7\"> ADMINISTRATION</font>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"drivers.jsp\"><span class=\"glyphicon glyphicon-user\"></span> Drivers</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"#\"><span class=\"glyphicon glyphicon-envelope\"></span> Messages</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <!--        //////////////////// write code in between these //////////////////-->\n");
      out.write("\n");
      out.write("                <div id=\"headtitle\"> \n");
      out.write("                    <h1><label> Enter Driver Information</label></h1><hr>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"map\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"Absolute-Center is-Responsive\">\n");
      out.write("                                <div id=\"logo-container\"></div>\n");
      out.write("                                <div class=\"col-sm-12 col-md-10 col-md-offset-1\">\n");
      out.write("                                    <form id=\"loginForm\" action=\"\">\n");
      out.write("                                        <div class=\"form-group input-group\">\n");
      out.write("                                            <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-user\"></i></span>\n");
      out.write("                                            <input class=\"form-control\" type=\"text\" id=\"name\" placeholder=\"Driver Name\" required/>          \n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group input-group\">\n");
      out.write("                                            <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-lock\"></i></span>\n");
      out.write("                                            <input class=\"form-control\" type=\"text\" id=\"vno\" placeholder=\"Vehicle Number\" required/>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group input-group\">\n");
      out.write("\n");
      out.write("                                            <select id=\"loca\" required>\n");
      out.write("                                                <option value=\"0\"> Select Location </option>\n");
      out.write("                                                <option value=\"1\"> Bhawarkua </option>\n");
      out.write("                                                <option value=\"2\"> LIG </option>\n");
      out.write("                                                <option value=\"3\"> Lavlakkha </option>\n");
      out.write("                                                <option value=\"4\"> Vijay Nagar </option>\n");
      out.write("                                                <option value=\"5\"> SGSITS </option>\n");
      out.write("                                                <option value=\"6\"> abc </option>\n");
      out.write("                                                <option value=\"7\"> xyz </option>\n");
      out.write("                                                <option value=\"8\"> adasd </option>\n");
      out.write("                                            </select>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"submit\" class=\"btn btn-def btn-block\" onClick=\"mysqlInsert();\">\n");
      out.write("                                        </div>    \n");
      out.write("                                    </form>        \n");
      out.write("                                </div>  \n");
      out.write("                            </div>    \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!--///////////////////-->    \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script>\n");
      out.write("            \n");
      out.write("            var config = {\n");
      out.write("                apiKey: \"AIzaSyCd18TubxogItKjriyW1pMeU_FnaLJnRLM\",\n");
      out.write("                authDomain: \"swachbharat-e438a.firebaseapp.com\",\n");
      out.write("                databaseURL: \"https://swachbharat-e438a.firebaseio.com\",\n");
      out.write("                projectId: \"swachbharat-e438a\",\n");
      out.write("                storageBucket: \"swachbharat-e438a.appspot.com\",\n");
      out.write("                messagingSenderId: \"674124402508\"\n");
      out.write("            };\n");
      out.write("            firebase.initializeApp(config);\n");
      out.write("            var ref = firebase.database().ref(\"Driver\");\n");
      out.write("\n");
      out.write("            function firebaseInsert() {\n");
      out.write("                ref.push().set({\n");
      out.write("                    name: document.getElementById(\"name\").value,\n");
      out.write("                    vehiclenumber: document.getElementById(\"vno\").value,\n");
      out.write("                    area: document.getElementById(\"loca\").value\n");
      out.write("                });\n");
      out.write("                alert(\"Vehicle Successfully Added\")\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function mysqlInsert(){\n");
      out.write("                    ");

                        out.println("hola");
                    
      out.write("\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        <!-- /#wrapper -->\n");
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
