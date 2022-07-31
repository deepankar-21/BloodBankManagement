<%-- 
    Document   : update_organization
    Created on : Jun 9, 2021, 11:14:14 PM
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
             String oname=request.getParameter("oname");
             String city=request.getParameter("city");     
             String state=request.getParameter("state");
             String pncd=request.getParameter("pncd");
             String bca=request.getParameter("bca");
             String st=request.getParameter("st");
             String lcn_no=request.getParameter("lcn_no");
              String lcn_date=request.getParameter("lcn_date");
            try{
                dbcon db=new dbcon();
      db.pstmt=db.con.prepareStatement("update register_hospitals_bborganization "
     + "set org_hosp_name='"+oname+"',city='"+city+"',state='"+state+"',pincode='"+pncd+"',bld_compo_avail='"+bca+"',service_time='"+st+"',license_numb='"+lcn_no+"',license_date='"+lcn_date+"' where email='"+email+"'");
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
