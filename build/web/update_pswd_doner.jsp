<%-- 
    Document   : change_pswd
    Created on : May 31, 2021, 11:54:43 AM
    Author     : Deepankar  Singh
--%>

<%@page import="DB.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
    </head>
    <body>
        <%
            try{
                dbcon db=new dbcon();
                String email=(String)session.getAttribute("email");
                String op=request.getParameter("op");
                String np=request.getParameter("np");
                String cp=request.getParameter("cp");
                
                db.pstmt=db.con.prepareStatement("select password from doner where email='"+email+"'");
                db.rst=db.pstmt.executeQuery();
                if(db.rst.next())
                {
                    if(db.rst.getString(1).equals(op))
                    {
                        if(np.equals(cp))
                        {
                            db.pstmt=db.con.prepareStatement("update doner set password='"+np+"' where email='"+email+"'");
                            int i=db.pstmt.executeUpdate();
                            if(i>0)
                            {
                                response.sendRedirect("DonerPanel.jsp");
                                session.setAttribute("success","Password Update Successfully");
                            }
                            else
                            {
                                response.sendRedirect("DonerPanel.jsp");
                                session.setAttribute("error","Opps! Something went wrong");
                            }
                        }
                        else
                        {
                            response.sendRedirect("Donerpanel.jsp");
                            session.setAttribute("error","Old password does not match");
                        }
                    }
                    else
                    {
                        response.sendRedirect("Donerpanel.jsp");
                        session.setAttribute("error", "Old password does not match");
                    }
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        %>
    </body>
</html>
