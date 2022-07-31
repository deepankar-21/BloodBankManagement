package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("         <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write("    <script src=\"https://kit.fontawesome.com/da8043735a.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <title>Blood Bank Management</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("          \n");
      out.write("                                    <!-- Nav Bar -->\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\n");
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
      out.write("          <a class=\"nav-link\" href=\"#about\"><i class=\"far fa-address-book\">&nbsp;</i>About</a>\n");
      out.write("      </li>\n");
      out.write("       <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"#contactus\"><i class=\"far fa-address-book\">&nbsp;</i>Contact Us</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"doner.jsp\"><i class=\"fa fa-\">&nbsp;</i>Doner's</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"login.jsp\"><i class=\"fa fa-lock\">&nbsp;</i>Login</a>\n");
      out.write("      </li>\n");
      out.write("     </ul>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("                            <div id=\"carouselExampleIndicators\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("  <ol class=\"carousel-indicators\">\n");
      out.write("    <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("    <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"1\"></li>\n");
      out.write("    <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"2\"></li>\n");
      out.write("  </ol>\n");
      out.write("  <div class=\"carousel-inner\">\n");
      out.write("    <div class=\"carousel-item active\">\n");
      out.write("      <img class=\"d-block w-79\" src=\"images/car1.png\" alt=\"First slide\">\n");
      out.write("    </div>\n");
      out.write("    <div class=\"carousel-item\">\n");
      out.write("      <img class=\"d-block w-79\" src=\"images/car2.jpg\" alt=\"Second slide\">\n");
      out.write("    </div>\n");
      out.write("    <div class=\"carousel-item\">\n");
      out.write("      <img class=\"d-block w-79\" src=\"images/car3.jpg\" alt=\"Third slide\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <a class=\"carousel-control-prev\" href=\"#carouselExampleIndicators\" role=\"button\" data-slide=\"prev\">\n");
      out.write("    <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\n");
      out.write("    <span class=\"sr-only\">Previous</span>\n");
      out.write("  </a>\n");
      out.write("  <a class=\"carousel-control-next\" href=\"#carouselExampleIndicators\" role=\"button\" data-slide=\"next\">\n");
      out.write("    <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\n");
      out.write("    <span class=\"sr-only\">Next</span>\n");
      out.write("  </a>\n");
      out.write("</div>        \n");
      out.write("        \n");
      out.write("        <section id=\"about\">\n");
      out.write("          <div class=\"jumbotron text-center\">\n");
      out.write("            <h1 class=\"display-4\">About US</h1>\n");
      out.write("            <p class=\"lead\">\n");
      out.write("Strength of Blood Beta Ware who's been always dedcated to save other lifes at any cost by provding and receving blood from donor and receiver please feel safe to contact them, whenever u urgently needed the blood. Thank You</p>\n");
      out.write("            <!--<hr class=\"my-4\">-->\n");
      out.write("            <a class=\"btn btn-primary btn-lg\" href=\"#\" role=\"button\">Learn more</a>\n");
      out.write("           </div>\n");
      out.write("      </section>\n");
      out.write("        \n");
      out.write("        <section id=\"contactus\" class=\"\" style=\"background-color:#edeff2;\">\n");
      out.write("          <div class=\"container\">\n");
      out.write("              <div class=\"row\">\n");
      out.write("                  <div  class=\"col-lg-4 col-md-4 col-sm-12 mt-5\">\n");
      out.write("                      <h4>Contact</h4>\n");
      out.write("                      <h6>Contact No: 9856235414</h6>\n");
      out.write("                      \n");
      out.write("                      <h6>Email: bloodbetaware2021@gmail.com</h6>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"col-lg-4 col-md-4 col-sm-12\">\n");
      out.write("                      <form action=\"contact\" method=\"\" class=\"form-group\">\n");
      out.write("                          <table class=\"table table-responsive \" style=\"border: 0.1px solid;border-color:#edeff2;\">\n");
      out.write("                              <tr><th colspan=\"2\" class=\"text-center bg-dark text-white\">CONTACT US</th></tr>\n");
      out.write("                              <tr><th>Name</th><td><input type=\"text\" id=\"name\" name=\"name\" class=\"form-control\"></td></tr>\n");
      out.write("                              <tr><th>Email</th><td><input type=\"email\" id=\"email\" name=\"email\" class=\"form-control\"></td></tr>\n");
      out.write("                              <tr><th>Message</th><td><input type=\"text\" id=\"msg\" name=\"msg\" class=\"form-control\"></td></tr>\n");
      out.write("                              <tr><td colspan=\"2\" class=\"text-center\"><button type=\"submit\" class=\"btn btn-outline-primary btn-block btn-md\">SEND</button><td></tr>\n");
      out.write("                          </table>\n");
      out.write("                      </form>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"col-lg-4 col-md-4 col-sm-12 mt-5\">\n");
      out.write("                      <h5 class=\"mt-5\">Follow Us</h5> \n");
      out.write("                      <div>\n");
      out.write("    <i class=\"fab fa-facebook\" style=\"font-size: 20px;\"><a href=\"www.facebook.com\"></a></i>\n");
      out.write("    <i class=\"fab fa-instagram-square ml-3\" style=\"font-size: 20px;\"><a href=\"www.instagram.com\"></a></i>\n");
      out.write("    <i class=\"fab fa-twitter ml-3\" style=\"font-size: 20px;\"><a href=\"www.twitter.com\"></a></i>\n");
      out.write("    <i class=\"fas fa-envelope ml-3\" style=\"font-size: 20px;\"><a href=\"wwww.gmail.com\"></a></i> \n");
      out.write("    <i class=\"fab fa-youtube ml-3\" style=\"font-size: 20px;\" ></i>\n");
      out.write("                      </div>\n");
      out.write("                  </div>\n");
      out.write("              </div>  \n");
      out.write("          </div>\n");
      out.write("      </section>\n");
      out.write("      <section id=\"copyright\" class=\" text-center bg-dark text-white\">\n");
      out.write("          <h6 class=\"text-center\">Blood Beta Ware Ⓒcopyright All Right Reserved 2021</h6>\n");
      out.write("      </section>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("         <!-- Optional JavaScript -->\n");
      out.write("    <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.4.1.slim.min.js\" integrity=\"sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\" integrity=\"sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\" integrity=\"sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src='files/jquery.js'></script>\n");
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
