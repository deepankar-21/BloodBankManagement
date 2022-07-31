
<%@page import="DB.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
             
             String oname=request.getParameter("oname");     
             String email=request.getParameter("email");
             String pswd=request.getParameter("pswd");
             String mob=request.getParameter("mob");
             String city=request.getParameter("city");     
             String state=request.getParameter("state");
             String pncd=request.getParameter("pncd");
             String bca=request.getParameter("bca");
             String st=request.getParameter("st");
             String lcn_no=request.getParameter("lcn_no");
              String lcn_date=request.getParameter("lcn_date");
             
             try
               {
                    dbcon db=new dbcon();
                    db.pstmt=db.con.prepareStatement("insert into register_hospitals_bborganization(org_hosp_name,email,password,mobile,city,state,pincode,bld_compo_avail,service_time,license_numb,license_date)"
               + " values('"+oname+"','"+email+"','"+pswd+"','"+mob+"','"+city+"','"+state+"','"+pncd+"','"+bca+"','"+st+"','"+lcn_no+"','"+lcn_date+"')");
                    int i=db.pstmt.executeUpdate();
                    if(i>0)
                    {
                        response.sendRedirect("Register_Doner_Org.jsp");
                        session.setAttribute("success","Organization/Hospital Registered Successfully");
                        
                    }
                    else
                    {
                         response.sendRedirect("Register_Doner_Org.jsp");
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
