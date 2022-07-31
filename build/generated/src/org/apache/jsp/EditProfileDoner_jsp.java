package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class EditProfileDoner_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link href=\"files/edit_doner.css\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"Styles/jquery-3.3.1.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"Styles/bootstrap-4.1.0.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <link href=\"Styles/bootstrap-4.1.0.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"Styles/MainStyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write("       <script src=\"https://kit.fontawesome.com/da8043735a.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("         <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\n");
      out.write("        <a class=\"navbar-brand\" href=\"#\"><img src=\"images/img2.png\" style=\"height: 30px;width: 30px;\" class=\"rounded-circle\">&nbsp;<strong style=\"font-family: cursive;\">Blood Beta Ware</strong></a>\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNavDropdown\" aria-controls=\"navbarNavDropdown\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("  </button>\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"navbarNavDropdown\">\n");
      out.write("    <ul class=\"navbar-nav ml-auto mr-5\">\n");
      out.write("      <li class=\"nav-item active\">\n");
      out.write("          <a class=\"nav-link\" href=\"Dashboard.jsp\"><i class=\"fa fa-home\">&nbsp;</i>Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("      </li>\n");
      out.write("     \n");
      out.write("      \n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"doner.jsp\"><i class=\"fas fa-th-list\">&nbsp;</i>Doner's</a>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"logout.jsp\"><i class=\"fa fa-lock\">&nbsp;</i>Logout</a>\n");
      out.write("      </li>\n");
      out.write("     </ul>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("                             <!--For Message Print-->\n");
      out.write("                             <div class=\"container-fluid\">\n");
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
      out.write("                             </div>\n");
      out.write("                                     \n");
      out.write("        \n");
      out.write("                                     <div class=\"container register\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <ul class=\"nav nav-tabs nav-justified\" id=\"myTab\" role=\"tablist\">\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link active\" id=\"home-tab\" data-toggle=\"tab\" href=\"#home\" role=\"tab\" aria-controls=\"home\" aria-selected=\"true\">Login Form 1</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" id=\"profile-tab\" data-toggle=\"tab\" href=\"#profile\" role=\"tab\" aria-controls=\"profile\" aria-selected=\"false\">Login Form 2</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                    <div class=\"tab-content\" id=\"myTabContent\">\n");
      out.write("                        <div class=\"tab-pane fade show active text-align form-new\" id=\"home\" role=\"tabpanel\" aria-labelledby=\"home-tab\">\n");
      out.write("                            <h3 class=\"register-heading\">Login Form 1</h3>\n");
      out.write("                            <div class=\"row register-form\">\n");
      out.write("                                <div class=\"col-md-12\">\n");
      out.write("                                    <form method=\"post\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"text\" name=\"LGform1_user\" class=\"form-control\" placeholder=\"Your Email *\" value=\"\" required=\"\"/>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"password\" name=\"LGform1_pwd\" class=\"form-control\" placeholder=\"Your Password *\" value=\"\" required=\"\"/>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"submit\" name=\"LGform1\" class=\"btnContactSubmit\" value=\"Login\" />\n");
      out.write("                                            <a href=\"ForgetPassword.php\" class=\"btnForgetPwd\" value=\"Login\">Forget Password?</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"tab-pane fade show text-align form-new\" id=\"profile\" role=\"tabpanel\" aria-labelledby=\"profile-tab\">\n");
      out.write("                            <h3  class=\"register-heading\">Login Form 2</h3>\n");
      out.write("                            <div class=\"row register-form\">\n");
      out.write("                                <div class=\"col-md-12\">\n");
      out.write("                                    <form method=\"post\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"text\" name=\"LGform2_user\" class=\"form-control\" placeholder=\"Your Email *\" value=\"\" required=\"\" />\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"password\" name=\"LGform2_pwd\" class=\"form-control\" placeholder=\"Your Password *\" value=\"\" required=\"\"/>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <input type=\"submit\" name=\"LGform2\" class=\"btnContactSubmit\" value=\"Login\" />\n");
      out.write("                                            <a href=\"ForgetPassword.php\" class=\"btnForgetPwd\" value=\"Login\">Forget Password?</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("         \n");
      out.write("                                         \n");
      out.write("                                         \n");
      out.write("                                         <!-- Optional JavaScript -->\n");
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
