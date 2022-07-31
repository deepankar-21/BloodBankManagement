<%-- 
    Document   : Request_For_Blood
    Created on : Jun 1, 2021, 4:20:53 PM
    Author     : Deepankar  Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="files/style_1.css" rel="stylesheet">
         <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
        <title>Request For Blood</title>
    </head>
    <body>
       
         <!-- Nav Bar -->
   <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
        <a class="navbar-brand" href="#"><img src="images/img2.png" style="height: 30px;width: 30px;" class="rounded-circle">&nbsp;<strong style="font-family: cursive;">Blood Beta Ware</strong></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav ml-auto mr-5">
      <li class="nav-item active">
          <a class="nav-link" href="index.jsp"><i class="fa fa-home">&nbsp;</i>Home <span class="sr-only">(current)</span></a>
      </li>
   <li class="nav-item">
          <a class="nav-link btn btn-outline-primary" href="Login.jsp"><span class="fa fa-lock"></span>&nbsp;Admin Login</a>
      </li>
     </ul>
  </div>
</nav>
         
         <!--For Message Print-->
                             <div class="container-fluid">
                                 <div class="row">
                                     <div class="col-lg-1 col-md-1 col-sm-12"></div>
                                     <div class="col-lg-10 col-md-10 col-sm-12">
                             <% String success=(String)session.getAttribute("success");
                             if(success!=null)
                    { %>
                      
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <strong><%=success%></strong>
                         <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                         <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                   <% }
                  session.removeAttribute("success");
                    %>
                    <% String error=(String)session.getAttribute("error");
                    if(error!=null)
                    { %>
                      
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            <strong><%=error%></strong>
                         <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                         <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                   <% }
                   session.removeAttribute("error");
                    %>
                                     </div>
                                     <div class="col-lg-1 col-md-1 col-sm-12"></div>
                                 </div>
                             </div>
                                     

<div class="container contact-form">
             <div class="contact-image">
                <img src="images" alt=""/>
            </div>
            <form method="post" action="requestfor_blood.jsp">
                <h3>Request For Blood</h3>
                <h4>Patient Details</h4>
               <div class="row mt-3">
                   
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="pat_name" class="form-control" placeholder="Patient Name *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="doc_name" class="form-control" placeholder="Doctor Name *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="city" class="form-control" placeholder="Your City *" value="" />
                        </div>
                        
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <textarea name="hos_name_addr" class="form-control" placeholder="Hospital Name & Address *" style="width: 100%; height: 90px;"></textarea>
                        </div>
                        <div class="form-group">
                                            <select class="form-control" name='bldgrp'>
                                             <option class="hidden"  selected disabled>Blood Group</option>
                                             <option value="A+">A+</option>
                                             <option value="A-">A-</option>
                                             <option value="B+">B+</option>
                                             <option value="B-">B-</option>
                                             <option value="O+">O+</option>
                                             <option value="O-">O-</option>
                                             <option value="AB+">AB+</option>
                                             <option value="AB-">AB-</option>
                                            </select>
                                        </div>
                    </div>
                </div>
                <h4 class='mt-5'>Contact Details</h4>
                 <div class="row mt-3">
                   
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="cont_name" class="form-control" placeholder="Contact Name *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="text" maxlength="10" minlength="10" name="mob" class="form-control" placeholder="Mobile Number *" value="" />
                        </div>
                        <div class="form-group">
                                            <select class="form-control" name='pri_type'>
                                             <option class="hidden"  selected disabled>Priority Type</option>
                                             <option value="Normal">Normal</option>
                                             <option value="Mild">Mild</option>
                                             <option value="Emergency">Emergency</option>
                                            </select>
                                        </div>
                        <div class="form-group">
                            <input type="submit" name="btnSubmit" class="btnContact" value="Send Request" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                          <div class="form-group">
                            <input type="date" name="date" class="form-control" placeholder="Date when Needed(YYYY-MM-DD) *" value="" />
                        </div>
                        <div class="form-group">
                             <input type="email" class="form-control" placeholder="Your Email *" name="email" />
                        </div>
                            <div class="form-group">
                            <textarea name="ot_msg" class="form-control" placeholder="Other Message *" style="width: 100%; height: 40px;"></textarea>
                        </div>
                        </div>
                    </div>
                </div>
            </form>
</div>
    </body>
</html>
