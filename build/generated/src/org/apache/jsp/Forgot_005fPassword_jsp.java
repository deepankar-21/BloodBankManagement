package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Forgot_005fPassword_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Lato\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Montserrat\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write("    \n");
      out.write("        <style>\n");
      out.write("            .bg-image{\n");
      out.write("        background-image :url(\"images/log.jpg\");\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("        <title>Login</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("         <!-- Nav Bar -->\n");
      out.write("   <nav class=\"navbar navbar-expand-lg navbar  navbar-dark bg-dark\">\n");
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
      out.write("          <a class=\"nav-link\" href=\"ContactUs.jsp\"><i class=\"fas fa-phone-square-alt\">&nbsp;</i>Contact Us</a>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("     </ul>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("         \n");
      out.write("         <!--For Message Print-->\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                                 <div class=\"row\">\n");
      out.write("                                     <div class=\"col-lg-1 col-md-1 col-sm-12\"></div>\n");
      out.write("                                     <div class=\"col-lg-10 col-md-10 col-sm-12\">\n");
      out.write("                             ");
 String success=(String)session.getAttribute("success");
                    if(success!=null)
                    { 
      out.write("\n");
      out.write("                      \n");
      out.write("                        <div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\">\n");
      out.write("                            <strong>");
      out.print(success);
      out.write("</strong>\n");
      out.write("                         <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n");
      out.write("                         <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                          </button>\n");
      out.write("                        </div>\n");
      out.write("                   ");
 }
                  session.removeAttribute("success");
                    
      out.write("\n");
      out.write("                    ");
 String error=(String)session.getAttribute("error");
                    if(error!=null)
                    { 
      out.write("\n");
      out.write("                      \n");
      out.write("                        <div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\">\n");
      out.write("                            <strong>");
      out.print(error);
      out.write("</strong>\n");
      out.write("                         <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n");
      out.write("                         <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                          </button>\n");
      out.write("                        </div>\n");
      out.write("                   ");
 }
                   session.removeAttribute("error");
                    
      out.write("\n");
      out.write("                                     </div>\n");
      out.write("                                     <div class=\"col-lg-1 col-md-1 col-sm-12\"></div>\n");
      out.write("                                 </div>\n");
      out.write("            </div>\n");
      out.write("                                     \n");
      out.write("                                     \n");
      out.write("         <section class=\"mt-2\">\n");
      out.write("\t<div class=\"container-fluid\">\n");
      out.write("  <div class=\"row no-gutter\">\n");
      out.write("      <div class=\"d-none d-md-flex col-md-4 col-lg-6 bg-image\"></div>\n");
      out.write("    <div class=\"col-md-8 col-lg-6\">\n");
      out.write("      <div class=\"login d-flex align-items-center py-5\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("          <div class=\"row\">\n");
      out.write("            <div class=\"col-md-9 col-lg-8 mx-auto\">\n");
      out.write("              <h3 class=\"login-heading mb-4\" style=\"text-align: center;\"><b>Blood Beta Ware</b></h3>\n");
      out.write("              <form action=\"login_doner.jsp\" method=\"post\">\n");
      out.write("                <div class=\"form-label-group\">\n");
      out.write("                    <label for=\"inputEmail\">Email address</label>\n");
      out.write("                  <input type=\"email\" name=\"email\" id=\"email\" class=\"form-control\" placeholder=\"Email address\" required autofocus>\n");
      out.write("                  \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                                     \n");
      out.write("               \n");
      out.write("              \n");
      out.write("                <button class=\"btn btn-lg btn-danger btn-block btn-login text-uppercase font-weight-bold mb-2\" type=\"submit\">Sign in</button>\n");
      out.write("                \n");
      out.write("                             \n");
      out.write("\n");
      out.write("              </form>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("</section>\n");
      out.write("         \n");
      out.write("         <!-- Footer -->\n");
      out.write("<footer class=\"w3-container w3-padding-64 w3-center w3-opacity\">  \n");
      out.write("  <div class=\"w3-xlarge w3-padding-32\">\n");
      out.write("    <i class=\"fa fa-facebook-official w3-hover-opacity\"></i>\n");
      out.write("    <i class=\"fa fa-instagram w3-hover-opacity\"></i>\n");
      out.write("    <i class=\"fa fa-snapchat w3-hover-opacity\"></i>\n");
      out.write("    <i class=\"fa fa-pinterest-p w3-hover-opacity\"></i>\n");
      out.write("    <i class=\"fa fa-twitter w3-hover-opacity\"></i>\n");
      out.write("    <i class=\"fa fa-linkedin w3-hover-opacity\"></i>\n");
      out.write(" </div>\n");
      out.write(" <p>Powered by <a href=\"\" target=\"\">Blood Beta Ware</a></p>\n");
      out.write("  <div class=\"copyright-text\">Copyright &copy; 2021. All Rights Reserved <a href=\"#\"></a></div>\n");
      out.write("                    <div class=\"copyright-text\">Design & Develop by  <a target=\"\" href=\"\">deepankar</a></div>\n");
      out.write("</footer>\n");
      out.write("         \n");
      out.write("          <!--Script -->\n");
      out.write(" <script src=\"https://www.google.com/recaptcha/api.js\" async defer></script>\n");
      out.write(" <script type=\"text/javascript\" src=\"files/script.js\"></script>\n");
      out.write("<script src=\"https://kit.fontawesome.com/da8043735a.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"files/boot1.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"files/boot2.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"files/boot3.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"files/jquery.js\"></script>\n");
      out.write("        \n");
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
