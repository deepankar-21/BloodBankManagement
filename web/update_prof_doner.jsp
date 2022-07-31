<%-- 
    Document   : update_prof_doner
    Created on : Jun 3, 2021, 8:58:01 PM
    Author     : Deepankar  Singh
--%>

<%@page import="DB.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             String email=(String)session.getAttribute("email");
            String name=request.getParameter("name");
            String mob=request.getParameter("mob");
            String age=request.getParameter("age");
            String wgt=request.getParameter("wgt");
            String city=request.getParameter("city");
            String state=request.getParameter("state");
            String pncd=request.getParameter("pncd");
            try{
                dbcon db=new dbcon();
      db.pstmt=db.con.prepareStatement("update doner set doner_name='"+name+"',mobile='"+mob+"',age='"+age+"',weight='"+wgt+"',city='"+city+"',state='"+state+"',pincode='"+pncd+"' where email='"+email+"'");
        int i=db.pstmt.executeUpdate();
     if(i>0)
     {
     response.sendRedirect("DonerPanel.jsp");
     session.setAttribute("success","Profile Updated Successfully");
     }
     else
     {
     response.sendRedirect("DonerPanel.jsp");
     session.setAttribute("error","Opps! Something Went Wrong");
     }
        }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        %>
    </body>
</html>
