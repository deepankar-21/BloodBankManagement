<%-- 
    Document   : update_prof_org
    Created on : Jun 9, 2021, 11:13:30 PM
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
            String email=request.getParameter("email");
            String name=request.getParameter("name");
            String mob=request.getParameter("mob");
            try{
                dbcon db=new dbcon();
      db.pstmt=db.con.prepareStatement("update register_hospitals_bborganization set org_hosp_name='"+name+"',mobile='"+mob+"' where email='"+email+"'");
        int i=db.pstmt.executeUpdate();
     if(i>0)
     {
     response.sendRedirect("OrganizationPanel.jsp");
     session.setAttribute("success","Profile Updated Successfully");
     }
     else
     {
     response.sendRedirect("OrganizationPanel.jsp");
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
