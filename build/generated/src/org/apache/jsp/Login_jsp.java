package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <style>\n");
      out.write("        .bg-image\n");
      out.write("        {\n");
      out.write("            background-image:images/logimg.jpg;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write("    <script src=\"https://kit.fontawesome.com/da8043735a.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <title>Login</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <section>\n");
      out.write("\t<div class=\"container-fluid\">\n");
      out.write("  <div class=\"row no-gutter\">\n");
      out.write("    <div class=\"d-none d-md-flex col-md-4 col-lg-6 bg-image\"></div>\n");
      out.write("    <div class=\"col-md-8 col-lg-6\">\n");
      out.write("      <div class=\"login d-flex align-items-center py-5\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("          <div class=\"row\">\n");
      out.write("            <div class=\"col-md-9 col-lg-8 mx-auto\">\n");
      out.write("              <h3 class=\"login-heading mb-4\" style=\"text-align: center;\"><b>Blood Beta Ware</b></h3>\n");
      out.write("              <form>\n");
      out.write("                <div class=\"form-label-group\">\n");
      out.write("                  <input type=\"email\" id=\"email\" class=\"form-control\" placeholder=\"Email address\" required autofocus>\n");
      out.write("                  <label for=\"inputEmail\">Email address</label>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"form-label-group\">\n");
      out.write("                  <input type=\"password\" id=\"pswd\" class=\"form-control\" placeholder=\"Password\" required>\n");
      out.write("                  <label for=\"inputPassword\">Password</label>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"custom-control custom-checkbox mb-3\">\n");
      out.write("                  <input type=\"checkbox\" class=\"custom-control-input\" id=\"customCheck1\">\n");
      out.write("                  <label class=\"custom-control-label\" for=\"customCheck1\">Remember password</label>\n");
      out.write("                </div>\n");
      out.write("                <button class=\"btn btn-lg btn-danger btn-block btn-login text-uppercase font-weight-bold mb-2\" type=\"submit\">Sign in</button>\n");
      out.write("                <div class=\"text-center\">\n");
      out.write("                  <a class=\"small\" href=\"#\">Forgot password?</a></div>\n");
      out.write("              </form>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("</section>\n");
      out.write("        \n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.4.1.slim.min.js\" integrity=\"sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n\" crossorigin=\"anonymous\"></script>\n");
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
