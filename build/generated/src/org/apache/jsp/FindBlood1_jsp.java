package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class FindBlood1_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    String city=(String)session.getAttribute("city");
    String state=(String)session.getAttribute("state");
    String bldgrp=(String)session.getAttribute("bldgrp");
 
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"files/style_3.css\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("         <link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Lato\">\n");
      out.write("       <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Montserrat\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("        <script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("<!------ Include the above in your HEAD tag ---------->\n");
      out.write("        <title>Find Blood</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("     <!-- Nav Bar -->\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar fixed-top navbar-dark bg-dark\">\n");
      out.write("        <a class=\"navbar-brand\" href=\"#\"><img src=\"images/img2.png\" style=\"height: 30px;width: 30px;\" class=\"rounded-circle\">&nbsp;<strong style=\"font-family: cursive;\">Blood Beta Ware</strong></a>\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNavDropdown\" aria-controls=\"navbarNavDropdown\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("  </button>\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"navbarNavDropdown\">\n");
      out.write("    <ul class=\"navbar-nav ml-auto mr-5\">\n");
      out.write("      <li class=\"nav-item active\">\n");
      out.write("          <a class=\"nav-link\" href=\"index.jsp\"><i class=\"fa fa-home\">&nbsp;</i>Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"#about\"><i class=\"fa fa-address-book\">&nbsp;</i>About</a>\n");
      out.write("      </li>\n");
      out.write("       <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"ContactUs.jsp\"><i class=\"fas fa-phone-square-alt\">&nbsp;</i>Contact Us</a>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"DonateUs.jsp\"><i class=\"fas fa-rupee-sign\">&nbsp;</i>DonateUs</a>\n");
      out.write("      </li>\n");
      out.write("\n");
      out.write("            <li class=\"nav-item dropdown\">\n");
      out.write("        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("          Organization\n");
      out.write("        </a>\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\" data-target=\"#register\" data-toggle=\"modal\">Register</a>\n");
      out.write("          <div class=\"dropdown-divider\"></div>\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\" data-target=\"#login\" data-toggle=\"modal\">LogIn</a>\n");
      out.write("        </div>\n");
      out.write("      </li>  \n");
      out.write("      \n");
      out.write("\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link btn btn-outline-primary\" href=\"Login.jsp\"><span class=\"fa fa-lock\"></span>&nbsp;Admin Login</a>\n");
      out.write("      </li>\n");
      out.write("     </ul>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<section>\n");
      out.write("    <div id=\"carouselExampleFade\" class=\"carousel slide carousel-fade\" data-ride=\"carousel\">\n");
      out.write("        <div class=\"carousel-inner\">\n");
      out.write("            <div class=\"carousel-item active\">\n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("            <div class=\"carousel-item\">\n");
      out.write("                <img src=\"\" class=\"d-block w-100\" >\n");
      out.write("            </div>\n");
      out.write("            <div class=\"carousel-item\">\n");
      out.write("                <img src=\"\" class=\"d-block w-100\">\n");
      out.write("            </div>\n");
      out.write("            <!--https://upload.wikimedia.org/wikipedia/commons/8/8d/Yarra_Night_Panorama%2C_Melbourne_-_Feb_2005.jpg-->\n");
      out.write("        </div>\n");
      out.write("        <a class=\"carousel-control-prev\" href=\"#carouselExampleFade\" role=\"button\" data-slide=\"prev\">\n");
      out.write("            <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\n");
      out.write("            <span class=\"sr-only\">Previous</span>\n");
      out.write("        </a>\n");
      out.write("        <a class=\"carousel-control-next\" href=\"#carouselExampleFade\" role=\"button\" data-slide=\"next\">\n");
      out.write("            <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\n");
      out.write("            <span class=\"sr-only\">Next</span>\n");
      out.write("        </a>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("<section class=\"search-sec\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <form action=\"find_blood.jsp\" method=\"post\" novalidate=\"novalidate\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-12\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        \n");
      out.write("                        <div class=\"col-lg-3 col-md-3 col-sm-12 p-0\">\n");
      out.write("                            <input type=\"text\" name=\"city\" class=\"form-control search-slt\" placeholder=\"Enter City\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-3 col-md-3 col-sm-12 p-0\">\n");
      out.write("                            <select class=\"form-control search-slt\" name=\"state\" id=\"exampleFormControlSelect1\">\n");
      out.write("                                           <option class=\"hidden\"  selected disabled>State</option>\n");
      out.write("                                            <option value=\"Andhra Pradesh\">Andhra Pradesh</option>\n");
      out.write("<option value=\"Andaman and Nicobar Islands\">Andaman and Nicobar Islands</option>\n");
      out.write("<option value=\"Arunachal Pradesh\">Arunachal Pradesh</option>\n");
      out.write("<option value=\"Assam\">Assam</option>\n");
      out.write("<option value=\"Bihar\">Bihar</option>\n");
      out.write("<option value=\"Chandigarh\">Chandigarh</option>\n");
      out.write("<option value=\"Chhattisgarh\">Chhattisgarh</option>\n");
      out.write("<option value=\"Dadar and Nagar Haveli\">Dadar and Nagar Haveli</option>\n");
      out.write("<option value=\"Daman and Diu\">Daman and Diu</option>\n");
      out.write("<option value=\"Delhi\">Delhi</option>\n");
      out.write("<option value=\"Lakshadweep\">Lakshadweep</option>\n");
      out.write("<option value=\"Puducherry\">Puducherry</option>\n");
      out.write("<option value=\"Goa\">Goa</option>\n");
      out.write("<option value=\"Gujarat\">Gujarat</option>\n");
      out.write("<option value=\"Haryana\">Haryana</option>\n");
      out.write("<option value=\"Himachal Pradesh\">Himachal Pradesh</option>\n");
      out.write("<option value=\"Jammu and Kashmir\">Jammu and Kashmir</option>\n");
      out.write("<option value=\"Jharkhand\">Jharkhand</option>\n");
      out.write("<option value=\"Karnataka\">Karnataka</option>\n");
      out.write("<option value=\"Kerala\">Kerala</option>\n");
      out.write("<option value=\"Madhya Pradesh\">Madhya Pradesh</option>\n");
      out.write("<option value=\"Maharashtra\">Maharashtra</option>\n");
      out.write("<option value=\"Manipur\">Manipur</option>\n");
      out.write("<option value=\"Meghalaya\">Meghalaya</option>\n");
      out.write("<option value=\"Mizoram\">Mizoram</option>\n");
      out.write("<option value=\"Nagaland\">Nagaland</option>\n");
      out.write("<option value=\"Odisha\">Odisha</option>\n");
      out.write("<option value=\"Punjab\">Punjab</option>\n");
      out.write("<option value=\"Rajasthan\">Rajasthan</option>\n");
      out.write("<option value=\"Sikkim\">Sikkim</option>\n");
      out.write("<option value=\"Tamil Nadu\">Tamil Nadu</option>\n");
      out.write("<option value=\"Telangana\">Telangana</option>\n");
      out.write("<option value=\"Tripura\">Tripura</option>\n");
      out.write("<option value=\"Uttar Pradesh\">Uttar Pradesh</option>\n");
      out.write("<option value=\"Uttarakhand\">Uttarakhand</option>\n");
      out.write("<option value=\"West Bengal\">West Bengal</option>\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-3 col-md-3 col-sm-12 p-0\">\n");
      out.write("                            <select class=\"form-control search-slt\" name=\"bldgrp\" id=\"exampleFormControlSelect1\">\n");
      out.write("                                            <option class=\"hidden\"  selected disabled>Blood Group</option>\n");
      out.write("                                             <option value=\"A+\">A+</option>\n");
      out.write("                                             <option value=\"A-\">A-</option>\n");
      out.write("                                             <option value=\"B+\">B+</option>\n");
      out.write("                                             <option value=\"B-\">B-</option>\n");
      out.write("                                             <option value=\"O+\">O+</option>\n");
      out.write("                                             <option value=\"O-\">O-</option>\n");
      out.write("                                             <option value=\"AB+\">AB+</option>\n");
      out.write("                                             <option value=\"AB-\">AB-</option>\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-3 col-md-3 col-sm-12 p-0\">\n");
      out.write("                            <button type=\"button\" class=\"btn btn-danger wrn-btn\">Search</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("        \n");
      out.write("        <!-- Footer -->\n");
      out.write("<footer class=\"w3-container w3-padding-64 w3-center w3-opacity\">  \n");
      out.write("  <div class=\"w3-xlarge w3-padding-32\">\n");
      out.write("    <i class=\"fa fa-facebook-official w3-hover-opacity\"></i>\n");
      out.write("    <i class=\"fa fa-instagram w3-hover-opacity\"></i>\n");
      out.write("    <i class=\"fa fa-snapchat w3-hover-opacity\"></i>\n");
      out.write("    <i class=\"fa fa-pinterest-p w3-hover-opacity\"></i>\n");
      out.write("    <i class=\"fa fa-twitter w3-hover-opacity\"></i>\n");
      out.write("    <i class=\"fa fa-linkedin w3-hover-opacity\"></i>\n");
      out.write(" </div>\n");
      out.write(" <p>Powered by <a href=\"\" target=\"_blank\">Blood Beta Ware</a></p>\n");
      out.write("  <div class=\"copyright-text\">Copyright &copy; 2021. All Rights Reserved <a href=\"#\"></a></div>\n");
      out.write("                    <div class=\"copyright-text\">Design & Develop by  <a target=\"_blank\" href=\"\">deepankar</a></div>\n");
      out.write("</footer>\n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("  <div class=\"row\">\n");
      out.write("    <div class=\"col-md-6 img\">\n");
      out.write("      <img src=\"\"  alt=\"\" class=\"img-rounded\">\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-md-6 details\">\n");
      out.write("      <blockquote>\n");
      out.write("        <h5>Fiona Gallagher</h5>\n");
      out.write("        <small><cite title=\"Source Title\">Chicago, United States of America  <i class=\"icon-map-marker\"></i></cite></small>\n");
      out.write("      </blockquote>\n");
      out.write("      <p>\n");
      out.write("        fionagallager@shameless.com <br>\n");
      out.write("        www.bootsnipp.com <br>\n");
      out.write("        June 18, 1990\n");
      out.write("      </p>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
