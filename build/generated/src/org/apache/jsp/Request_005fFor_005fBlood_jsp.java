package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Request_005fFor_005fBlood_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"files/style_1.css\" rel=\"stylesheet\">\n");
      out.write("         <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("<!------ Include the above in your HEAD tag ---------->\n");
      out.write("        <title>Request For Blood</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("         <!-- Nav Bar -->\n");
      out.write("   <nav class=\"navbar navbar-expand-lg navbar fixed-top navbar-dark bg-dark\">\n");
      out.write("        <a class=\"navbar-brand\" href=\"#\"><img src=\"images/img2.png\" style=\"height: 30px;width: 30px;\" class=\"rounded-circle\">&nbsp;<strong style=\"font-family: cursive;\">Blood Beta Ware</strong></a>\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNavDropdown\" aria-controls=\"navbarNavDropdown\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("  </button>\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"navbarNavDropdown\">\n");
      out.write("    <ul class=\"navbar-nav ml-auto mr-5\">\n");
      out.write("      <li class=\"nav-item active\">\n");
      out.write("          <a class=\"nav-link\" href=\"index.jsp\"><i class=\"fa fa-home\">&nbsp;</i>Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("      </li>\n");
      out.write("   <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link btn btn-outline-primary\" href=\"Login.jsp\"><span class=\"fa fa-lock\"></span>&nbsp;Admin Login</a>\n");
      out.write("      </li>\n");
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
      out.write("\n");
      out.write("<div class=\"container contact-form\">\n");
      out.write("             <div class=\"contact-image\">\n");
      out.write("                <img src=\"images/orgp.jpg\" alt=\"\"/>\n");
      out.write("            </div>\n");
      out.write("            <form method=\"post\" action=\"requestfor_blood.jsp\">\n");
      out.write("                <h3>Request For Blood</h3>\n");
      out.write("                <h4>Patient Details</h4>\n");
      out.write("               <div class=\"row mt-3\">\n");
      out.write("                   \n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"text\" name=\"pat_name\" class=\"form-control\" placeholder=\"Patient Name *\" value=\"\" />\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"text\" name=\"doc_name\" class=\"form-control\" placeholder=\"Doctor Name *\" value=\"\" />\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"text\" name=\"city\" class=\"form-control\" placeholder=\"Your City *\" value=\"\" />\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <textarea name=\"hos_name_addr\" class=\"form-control\" placeholder=\"Hospital Name & Address *\" style=\"width: 100%; height: 90px;\"></textarea>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                                            <select class=\"form-control\" name='bldgrp'>\n");
      out.write("                                             <option class=\"hidden\"  selected disabled>Blood Group</option>\n");
      out.write("                                             <option value=\"A+\">A+</option>\n");
      out.write("                                             <option value=\"A-\">A-</option>\n");
      out.write("                                             <option value=\"B+\">B+</option>\n");
      out.write("                                             <option value=\"B-\">B-</option>\n");
      out.write("                                             <option value=\"O+\">O+</option>\n");
      out.write("                                             <option value=\"O-\">O-</option>\n");
      out.write("                                             <option value=\"AB+\">AB+</option>\n");
      out.write("                                             <option value=\"AB-\">AB-</option>\n");
      out.write("                                            </select>\n");
      out.write("                                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <h4 class='mt-5'>Contact Details</h4>\n");
      out.write("                 <div class=\"row mt-3\">\n");
      out.write("                   \n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"text\" name=\"cont_name\" class=\"form-control\" placeholder=\"Contact Name *\" value=\"\" />\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"text\" name=\"mob\" class=\"form-control\" placeholder=\"Mobile Number *\" value=\"\" />\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                                            <select class=\"form-control\" name='pri_type'>\n");
      out.write("                                             <option class=\"hidden\"  selected disabled>Priority Type</option>\n");
      out.write("                                             <option value=\"Normal\">Normal</option>\n");
      out.write("                                             <option value=\"Mild\">Mild</option>\n");
      out.write("                                             <option value=\"Imergency\">Imergency</option>\n");
      out.write("                                            </select>\n");
      out.write("                                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"submit\" name=\"btnSubmit\" class=\"btnContact\" value=\"Send Request\" />\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                          <div class=\"form-group\">\n");
      out.write("                            <input type=\"date\" name=\"date\" class=\"form-control\" placeholder=\"Date when Needed(YYYY-MM-DD) *\" value=\"\" />\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                             <input type=\"email\" class=\"form-control\" placeholder=\"Your Email *\" name=\"email\" />\n");
      out.write("                        </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                            <textarea name=\"ot_msg\" class=\"form-control\" placeholder=\"Other Message *\" style=\"width: 100%; height: 40px;\"></textarea>\n");
      out.write("                        </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("</div>\n");
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
