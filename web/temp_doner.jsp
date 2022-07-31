<%-- 
    Document   : temp_doner
    Created on : Jun 9, 2021, 10:35:46 PM
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
             
             String name=request.getParameter("name");     
             String email=request.getParameter("email");
             String mob=request.getParameter("mob");
             String bldgrp=request.getParameter("bldgrp");
             String city=request.getParameter("city");     
             String state=request.getParameter("state");
             String bld_don=request.getParameter("bld_don");
             String oname=request.getParameter("oname");
             
             
             try
               {
                    dbcon db=new dbcon();
                    db.pstmt=db.con.prepareStatement("insert into temp_doner(name,email,mobile,blood_group,city,state,blood_donate,org_hosp_name)"
               + " values('"+name+"','"+email+"','"+mob+"','"+bldgrp+"','"+city+"','"+state+"','"+bld_don+"','"+oname+"')");
                    int i=db.pstmt.executeUpdate();
                    if(i>0)
                    {
                        response.sendRedirect("OrganizationPanel.jsp");
                        session.setAttribute("success","Registered Successfully");
                        
                    }
                    else
                    {
                         response.sendRedirect("OrganizationPanel.jsp");
                         session.setAttribute("error","Something went Wrong");
                    }
               }
              catch(Exception e)
                      {
                          e.printStackTrace();
                      }
             %>
    </body>
</html>
