<%-- 
    Document   : Register_1
    Created on : May 31, 2021, 8:27:29 PM
    Author     : Deepankar  Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="files/style_2.css" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        
<!--W3 Bootstrap CSS
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

Bootstrap CSS-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

        <title>JSP Page</title>
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
                                     
        <section class="">
<div class="container register ">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome</h3>
                        <p>Your's small help give other's life</p>
                        <form action="LoginOrg.jsp"><input type="submit" name="" value="Org Login"/></form><br/>
                    </div>
                    <div class="col-md-9 register-right">
                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Doner</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Organization</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Register as a Doner</h3>
                                <form method="post" action="register_doner.jsp">
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Your Name *" name="name" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Password *" name="pswd" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Your Age *" name="age" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control"  placeholder="Your Weight*" name="wgt" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="City *" name="addr" />
                                        </div>
                                        <div class="form-group">
                                            <label for="">Last Donation</label>
                                            <input type="date" class="form-control" placeholde="" name="ld" />
                                        </div>
                                        <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gen" value="male" checked>
                                                    <span> Male </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gen" value="female">
                                                    <span>Female </span> 
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Your Email *" name="email" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" name="mob" class="form-control" placeholder="Your Phone *" value="" />
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
                                        <div class="form-group">
                                            <select class="form-control" name='state'>
                                             <option class="hidden"  selected disabled>State</option>
                                            <option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Puducherry">Puducherry</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Odisha">Odisha</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Telangana">Telangana</option>
<option value="Tripura">Tripura</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="Uttarakhand">Uttarakhand</option>
<option value="West Bengal">West Bengal</option>

                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" minlength="6" maxlength="6" class="form-control" placeholder="Pincode *" name="pncd" />
                                        </div>
                                        <input type="submit" class="btnRegister"  value="Register"/>
                                    </div>
                                </div>
                                    </form>
                            </div>
                            <div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <h3  class="register-heading">Register as an Organization</h3>
                                <form method="post" action="register_bborganization.jsp">
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Org/Hospital Name *" name="oname" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Password *" name="pswd" />
                                        </div>
                                        <div class="form-group">
                                             <select class="form-control" name='bca'>
                                             <option class="hidden"  selected disabled>Blood Component Available</option>
                                             <option value="Yes">Yes</option>
                                             <option value="No">No</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control"  placeholder="License Number *" name="lcn_no" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="City *" name="city" />
                                        </div>
                                       <div class="form-group">
                                           <label>License Date</label>
                                            <input type="date" class="form-control"  placeholder="License date *" name="lcn_date" />
                                        </div>
                                        
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Your Email *" name="email" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" name="mob" class="form-control" placeholder="Your Phone *" value="" />
                                        </div>
                                        <div class="form-group">
                                             <select class="form-control" name='st'>
                                             <option class="hidden"  selected disabled>Service Time</option>
                                             <option value="24Hr">24Hr</option>
                                             <option value="12Hr">12Hr</option>
                                            </select>
                                        </div>
                                        
                                        <div class="form-group">
                                            <select class="form-control" name='state'>
                                             <option class="hidden"  selected disabled>State</option>
                                            <option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Puducherry">Puducherry</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Odisha">Odisha</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Telangana">Telangana</option>
<option value="Tripura">Tripura</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="Uttarakhand">Uttarakhand</option>
<option value="West Bengal">West Bengal</option>

                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" minlength="6" maxlength="6" class="form-control" placeholder="Pincode *" name="pncd" />
                                        </div>
                                        <input type="submit" class="btnRegister"  value="Register"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div
        </section>
       <!--Script -->
<script src="https://kit.fontawesome.com/da8043735a.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="files/jquery.js"></script>
<script type="text/javascript" src="files/boot1.js"></script>
<script type="text/javascript" src="files/boot2.js"></script>
<script type="text/javascript" src="files/boot3.js"></script>

<script>
              function checkPasswordMatch() {
        var password = $("#pswd").val();
        var confirmPassword = $("#cpswd").val();
        if (password !== confirmPassword)
            $("#CheckPasswordMatch").html("Passwords does not match!");
        else
            $("#CheckPasswordMatch").html("Passwords match.");
    }
    $(document).ready(function () {
       $("#txtConfirmPassword").keyup(checkPasswordMatch);
    });
</script>
    </body>
</html>
