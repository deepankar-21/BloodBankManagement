<%-- 
    Document   : requestfor_blood
    Created on : Jun 1, 2021, 5:09:27 PM
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
//    Date d=new Date();
//    SimpleDateFormat sf=new SimpleDateFormat("dd-MM-YYYY");
//    String date=sf.format(d);
    String pat_name=request.getParameter("pat_name");
    String doc_name=request.getParameter("doc_name");     
    String city=request.getParameter("city");
    String hos_name_addr=request.getParameter("hos_name_addr");
    String bldgrp=request.getParameter("bldgrp");     
    String cont_name=request.getParameter("cont_name");
    String mob=request.getParameter("mob");
    String pri_type=request.getParameter("pri_type");
    String date=request.getParameter("date");
    String email=request.getParameter("email");
    String ot_msg=request.getParameter("ot_msg");
    

   
       try{
           dbcon db=new dbcon();
           
           db.pstmt=db.con.prepareStatement("insert into requestforblood(patient_name,doctor_name,city,"
           + "hospital_name_address,blood_group,contact_name,mobile,priority_type,date_when_needed,email,other_message) "
           + "values ('"+pat_name+"','"+doc_name+"','"+city+"','"+hos_name_addr+"','"+bldgrp+"','"+cont_name+"','"+mob+"',"
           + " '"+pri_type+"','"+date+"','"+email+"','"+ot_msg+"')");
        
           int i=db.pstmt.executeUpdate();
              
           if(i>0)
           {
               response.sendRedirect("Request_For_Blood.jsp");
               session.setAttribute("success","Request register Successfully");
           }
           else
           {
               response.sendRedirect("Request_For_Blood.jsp");
               session.setAttribute("error","Something went Wrong");
           }
       }
       catch(Exception e){
           e.printStackTrace();
       }
        %>
    </body>
</html>
