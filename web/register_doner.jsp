


<%@page import="DB.dbcon"%>
<%--<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        
        <%
//    Date d=new Date();
//    SimpleDateFormat sf=new SimpleDateFormat("dd-MM-YYYY");
//    String date=sf.format(d);
    String name=request.getParameter("name");
    String email=request.getParameter("email");     
    String pswd=request.getParameter("pswd");
    String mob=request.getParameter("mob");
    String bldgrp=request.getParameter("bldgrp");     
    String gen=request.getParameter("gen");
    String ld=request.getParameter("ld");
    String age=request.getParameter("age");
    String wgt=request.getParameter("wgt");
    String city=request.getParameter("city");
    String state=request.getParameter("state");
    String pncd=request.getParameter("pncd");
    
   
       try{
           dbcon db=new dbcon();
           db.pstmt=db.con.prepareStatement("insert into doner(doner_name,email,password,mobile,bloodgroup,gender,last_donation,age,weight,city,state,pincode) "
   + "values ('"+name+"','"+email+"','"+pswd+"','"+mob+"','"+bldgrp+"','"+gen+"','"+ld+"','"+age+"','"+wgt+"','"+city+"','"+state+"','"+pncd+"')");
           
           int i=db.pstmt.executeUpdate();
           if(i>0)
           {
               response.sendRedirect("Register_Doner_Org.jsp");
               session.setAttribute("success","Doner register Successfully");
           }
           else
           {
               response.sendRedirect("Register_Doner_Org.jsp");
               session.setAttribute("error","Doner not registered,Something went Wrong");
           }
       }
       catch(Exception e){
           e.printStackTrace();
       }
        %>
    </body>
</html>
