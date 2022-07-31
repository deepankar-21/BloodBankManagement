package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class MyDonationReport_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("         <script src=\"//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"//code.jquery.com/jquery-1.11.1.min.js\"></script>\n");
      out.write("       \n");
      out.write("        <title>My Donation Report</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <div class=\"container-fluid well span6\">\n");
      out.write("\t<div class=\"row-fluid\">\n");
      out.write("        <div class=\"span2\" >\n");
      out.write("\t\t    <img src=\"https://secure.gravatar.com/avatar/de9b11d0f9c0569ba917393ed5e5b3ab?s=140&r=g&d=mm\" class=\"img-circle\">\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"span8\">\n");
      out.write("            <h3>User Name</h3>\n");
      out.write("            <h6>Email: MyEmail@servidor.com</h6>\n");
      out.write("            <h6>Ubication: Colombia</h6>\n");
      out.write("            <h6>Old: 1 Year</h6>\n");
      out.write("            <h6><a href=\"#\">More... </a></h6>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"span2\">\n");
      out.write("            <div class=\"btn-group\">\n");
      out.write("                <a class=\"btn dropdown-toggle btn-info\" data-toggle=\"dropdown\" href=\"#\">\n");
      out.write("                    Action \n");
      out.write("                    <span class=\"icon-cog icon-white\"></span><span class=\"caret\"></span>\n");
      out.write("                </a>\n");
      out.write("                <ul class=\"dropdown-menu\">\n");
      out.write("                    <li><a href=\"#\"><span class=\"icon-wrench\"></span> Modify</a></li>\n");
      out.write("                    <li><a href=\"#\"><span class=\"icon-trash\"></span> Delete</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("</div>\n");
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
