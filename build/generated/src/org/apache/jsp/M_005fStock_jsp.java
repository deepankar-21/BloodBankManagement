package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DB.dbcon;

public final class M_005fStock_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    dbcon db=new dbcon();
 
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write("         \n");
      out.write("        <title>Dashboard Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("                                                           <!-- Nav Bar -->\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\n");
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
      out.write("        \n");
      out.write("                   \n");
      out.write("                          \n");
      out.write("                                     <div class=\"container-fluid\">\n");
      out.write("                                         <div class=\"row mt bg-danger text-white\">\n");
      out.write("                                             <div class=\"col-lg-3 col-md-3 col-sm-12\">\n");
      out.write("                                                 <h2 style='color: #66BFBF;font-family: curasive;'>Welcome Admin</h2>\n");
      out.write("                                             </div>\n");
      out.write("                                             <div class=\"col-lg-7 col-md-7 col-sm-12\">\n");
      out.write("                                                 <marquee>Admin</marquee>\n");
      out.write("                                             </div>\n");
      out.write("                                             <div class=\"col-lg-1 col-md-1 col-sm-12\">\n");
      out.write("                                                 ");

                                                     try{
                                                    
                                                    db.pstmt=db.con.prepareStatement("select count(c_id) from contactus where status='0'");
                                                   db.rst=db.pstmt.executeQuery();
                                                   if(db.rst.next()){
                                                 int msg=db.rst.getInt(1);
                                                      
      out.write("\n");
      out.write("                                                 <a href=\"\" class=\"btn btn-success btn-md\"><span class=\"fas fa-bell\">&nbsp;</span>\n");
      out.write("                                                 <span class='badge badge-primary'>");
      out.print(msg);
      out.write("</span></a>   \n");
      out.write("                                                 ");
}}
                                                     catch(Exception e){
                                                     e.printStackTrace();
                                                    }
      out.write("\n");
      out.write("                                             </div>\n");
      out.write("                                             <div class=\"col-lg-1 col-md-1 col-sm-12\">\n");
      out.write("                                                 <a href=\"logout.jsp\" class=\"btn btn-warning btn-md\"><span class=\"fa fa-power-off\">&nbsp;</span></a>\n");
      out.write("                                             </div>\n");
      out.write("                                         </div>\n");
      out.write("                                     </div>    \n");
      out.write("                                     \n");
      out.write("                                     <div class=\"row mt-2\">\n");
      out.write("                                         <div class=\"col-lg-3 col-md-3 col-sm-12\">\n");
      out.write("                                             <ul class=\"nav nav-pills flex-column\">\n");
      out.write("                                                 <li class=\"nav-item\">\n");
      out.write("                                                <a class=\"nav-link\" href=\"Dashboard.jsp\">Home</a>\n");
      out.write("                                                  </li>\n");
      out.write("                                                 <li class=\"nav-item\">\n");
      out.write("                                               <a class=\"nav-link\" href=\"M_Organization.jsp\">Organization/Hospitals</a>\n");
      out.write("                                                    </li>\n");
      out.write("                                             <li class=\"nav-item\">\n");
      out.write("                                           <a class=\"nav-link\" href=\"M_Doners.jsp\">Doners</a>\n");
      out.write("                                             </li>\n");
      out.write("                                      <li class=\"nav-item\">\n");
      out.write("                                    <a class=\"nav-link active\" href=\"M_Stock.jsp\">Stock</a>\n");
      out.write("                                         </li>\n");
      out.write("                                         </ul>\n");
      out.write("                                         </div>\n");
      out.write("                                         <div class=\"col-lg-9 col-md-9 col-sm-12\">\n");
      out.write("                                             <div class=\"row\">\n");
      out.write("                                             <div class=\"col-lg-3 col-md-3 col-sm-12\">\n");
      out.write("                                     ");

                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(bloodgroup) from doner where bloodgroup='A-'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int an=db.rst.getInt(1);
                                      
      out.write("\n");
      out.write("                                                 <div class=\"card bg-info text-white\" style=\"width: 12rem;\">\n");
      out.write("                                                <div class=\"card-body\">\n");
      out.write("                                                   <h2 class=\"card-title\">A-</h2>\n");
      out.write("                                                      <p class=\"card-text\"></p>\n");
      out.write("                                                      <a href=\"A_Negative.jsp\" class=\"btn btn-danger\">");
      out.print(an);
      out.write("</a>\n");
      out.write("                                                  </div>\n");
      out.write("                                                 </div>\n");
      out.write("                                      ");
}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        
      out.write("\n");
      out.write("                                             </div>\n");
      out.write("                                             <div class=\"col-lg-3 col-md-3 col-sm-12\">\n");
      out.write("                                                 ");

                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(bloodgroup) from doner where bloodgroup='A+'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int ap=db.rst.getInt(1);
                                      
      out.write("\n");
      out.write("                                                 <div class=\"card bg-success text-white\" style=\"width: 12rem;\">\n");
      out.write("                                                <div class=\"card-body\">\n");
      out.write("                                                   <h2 class=\"card-title\">A+</h2>\n");
      out.write("                                                      <p class=\"card-text\"></p>\n");
      out.write("                                                  <a href=\"#\" class=\"btn btn-danger\">");
      out.print(ap);
      out.write("</a>\n");
      out.write("                                                  </div>\n");
      out.write("                                                 </div>\n");
      out.write("                                                 ");
}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        
      out.write("\n");
      out.write("                                             </div>\n");
      out.write("                                             <div class=\"col-lg-3 col-md-3 col-sm-12\">\n");
      out.write("                                                  ");

                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(bloodgroup) from doner where bloodgroup='AB-'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int abn=db.rst.getInt(1);
                                      
      out.write("\n");
      out.write("                                                 <div class=\"card bg-warning text-white\" style=\"width: 12rem;\">\n");
      out.write("                                                <div class=\"card-body\">\n");
      out.write("                                                   <h2 class=\"card-title\">AB-</h2>\n");
      out.write("                                                      <p class=\"card-text\"></p>\n");
      out.write("                                                  <a href=\"#\" class=\"btn btn-danger\">");
      out.print(abn);
      out.write("</a>\n");
      out.write("                                                  </div>\n");
      out.write("                                                 </div>\n");
      out.write("                                                 ");
}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        
      out.write("\n");
      out.write("                                             </div>\n");
      out.write("                                                 <div class=\"col-lg-3 col-md-3 col-sm-12\">\n");
      out.write("                                                      ");

                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(bloodgroup) from doner where bloodgroup='AB+'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int abp=db.rst.getInt(1);
                                      
      out.write("\n");
      out.write("                                                 <div class=\"card bg-secondary text-white\" style=\"width: 12rem;\">\n");
      out.write("                                                <div class=\"card-body\">\n");
      out.write("                                                   <h2 class=\"card-title\">AB+</h2>\n");
      out.write("                                                      <p class=\"card-text\"></p>\n");
      out.write("                                                  <a href=\"#\" class=\"btn btn-danger\">");
      out.print(abp);
      out.write("</a>\n");
      out.write("                                                  </div>\n");
      out.write("                                                 </div>\n");
      out.write("                                                 ");
}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        
      out.write("\n");
      out.write("                                             </div>\n");
      out.write("                                         </div>\n");
      out.write("                                       </div>      \n");
      out.write("                                     </div>\n");
      out.write("                                     \n");
      out.write("                                                           <div class='row mt-2'>\n");
      out.write("                                                               <div class='col-lg-3 col-md-3 col-sm-12'></div>\n");
      out.write("                                                               <div class='col-lg-9 col-md-9 col-sm-12'>\n");
      out.write("                                                                   <div class=\"row\">\n");
      out.write("                                             <div class=\"col-lg-3 col-md-3 col-sm-12\">\n");
      out.write("                                                  ");

                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(bloodgroup) from doner where bloodgroup='B-'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int bn=db.rst.getInt(1);
                                      
      out.write("\n");
      out.write("                                                 <div class=\"card bg-info text-white\" style=\"width: 12rem;\">\n");
      out.write("                                                <div class=\"card-body\">\n");
      out.write("                                                   <h2 class=\"card-title\">B-</h2>\n");
      out.write("                                                      <p class=\"card-text\"></p>\n");
      out.write("                                                  <a href=\"#\" class=\"btn btn-danger\">");
      out.print(bn);
      out.write("</a>\n");
      out.write("                                                  </div>\n");
      out.write("                                                 </div>\n");
      out.write("                                                 ");
}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        
      out.write("\n");
      out.write("                                             </div>\n");
      out.write("                                             <div class=\"col-lg-3 col-md-3 col-sm-12\">\n");
      out.write("                                                  ");

                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(bloodgroup) from doner where bloodgroup='B-'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int bp=db.rst.getInt(1);
                                      
      out.write("\n");
      out.write("                                                 <div class=\"card bg-success text-white\" style=\"width: 12rem;\">\n");
      out.write("                                                <div class=\"card-body\">\n");
      out.write("                                                   <h2 class=\"card-title\">B+</h2>\n");
      out.write("                                                      <p class=\"card-text\"></p>\n");
      out.write("                                                  <a href=\"#\" class=\"btn btn-danger\">");
      out.print(bp);
      out.write("</a>\n");
      out.write("                                                  </div>\n");
      out.write("                                                 </div>\n");
      out.write("                                                 ");
}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        
      out.write("\n");
      out.write("                                             </div>\n");
      out.write("                                             <div class=\"col-lg-3 col-md-3 col-sm-12\">\n");
      out.write("                                                  ");

                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(bloodgroup) from doner where bloodgroup='O-'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int on=db.rst.getInt(1);
                                      
      out.write("\n");
      out.write("                                                 <div class=\"card bg-warning text-white\" style=\"width: 12rem;\">\n");
      out.write("                                                <div class=\"card-body\">\n");
      out.write("                                                   <h2 class=\"card-title\">O-</h2>\n");
      out.write("                                                      <p class=\"card-text\"></p>\n");
      out.write("                                                  <a href=\"#\" class=\"btn btn-danger\">");
      out.print(on);
      out.write("</a>\n");
      out.write("                                                  </div>\n");
      out.write("                                                 </div>\n");
      out.write("                                                 ");
}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        
      out.write("\n");
      out.write("                                             </div>\n");
      out.write("                                                 <div class=\"col-lg-3 col-md-3 col-sm-12\">\n");
      out.write("                                                      ");

                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(bloodgroup) from doner where bloodgroup='O+'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int op=db.rst.getInt(1);
                                      
      out.write("\n");
      out.write("                                                 <div class=\"card bg-secondary text-white\" style=\"width: 12rem;\">\n");
      out.write("                                                <div class=\"card-body\">\n");
      out.write("                                                   <h2 class=\"card-title\">O+</h2>\n");
      out.write("                                                      <p class=\"card-text\"></p>\n");
      out.write("                                                  <a href=\"#\" class=\"btn btn-danger\">");
      out.print(op);
      out.write("</a>\n");
      out.write("                                                  </div>\n");
      out.write("                                                 </div>\n");
      out.write("                                                 ");
}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        
      out.write("\n");
      out.write("                                             </div>\n");
      out.write("                                         </div>\n");
      out.write("                                                               </div>\n");
      out.write("                                                           </div>\n");
      out.write("                                     \n");
      out.write(" <!--Script -->\n");
      out.write("<script src=\"https://kit.fontawesome.com/da8043735a.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"files/boot1.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"files/boot2.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"files/boot3.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"files/jquery.js\"></script>\n");
      out.write("                                    \n");
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
