<%-- 
    Document   : OrganizationPanel
    Created on : Apr 30, 2021, 2:53:59 PM
    Author     : Deepankar  Singh
--%>

<%@page import="DB.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    dbcon db=new dbcon();
    String email=(String)session.getAttribute("email");
    String name=(String)session.getAttribute("name");
    String id=(String)session.getAttribute("id");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!--Bootstrap CSS-->
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Organization Panel</title>
    </head>
    <body style="background-color: ">
        <%
        try {
            db.pstmt=db.con.prepareStatement("select * from register_hospitals_bborganization where email='"+email+"'");
            db.rst=db.pstmt.executeQuery();
            if(db.rst.next())
            {
             
             String mobile=db.rst.getString(5);
             String city=db.rst.getString(6);
             String state=db.rst.getString(7);
             String pncd=db.rst.getString(8);
             String bca=db.rst.getString(9);
             String st=db.rst.getString(10);
             String lcn_no=db.rst.getString(11);
             String lcn_date=db.rst.getString(12);
            %>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <h1>Welcome  <%=name%></h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a href="OrganizationPanel.jsp" class="nav-link active">My Profile</a>
                        </li>
                    
                    
                    <li class="nav-item">
                            <a href="#" data-target="#doner_reg" data-toggle="modal" class="nav-link">Doner Registration</a>
                    </li>
                
                        
                     <li class="nav-item">
                            <a href="Details.jsp" class="nav-link">See Details</a>
                     </li>
                        
                        
                     <li class="nav-item">
                            <a href="Others.jsp" class="nav-link">Others</a>
                     </li>
                     
                     <li class="nav-item">
                            <a href="#" data-target="#camp_reg" data-toggle="modal" class="nav-link">Camp/Counter Registeration</a>
                     </li>
                     
                     <li class="nav-item">
                            <a href="logout.jsp" class="nav-link">Logout</a>
                     </li>
                  </ul>   
                </div>
            </div>
            
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
                                     
                                     
            <div class="row mt-5">
                <div class="col-lg-6 col-md-6 col-sm-12">
                    <%
                try {
         db.pstmt=db.con.prepareStatement("select * from register_hospitals_bborganization where email='"+email+"'");
         db.rst=db.pstmt.executeQuery();
         if(db.rst.next())
         { 
             %>
                    <table class="table  table-striped table-hover table-bordered">
                        <tr><th>Name</th><td><%=db.rst.getString(2)%></td></tr>
                        <tr><th>Email</th><td><%=db.rst.getString(3)%></td></tr>
                        <tr><th>Mobile</th><td><%=db.rst.getString(5)%></td></tr>
                    </table>
                       <%
                        }} 
                     catch(Exception e)
                        {
                      e.printStackTrace();
                          }
                         %>
                    <div>
                <img class="mb-4" src="images/orgp.jpg" alt="" width="500" height="350" style="border-radius:5px;">
                </div>
                </div>
                
                
                       <!--Accordian-->
                <div class="col-lg-6 col-md-6 col-sm-12">
                    <div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Update Profile Details
        </button>
      </h2>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body bg-dark text-white">
        <form class="form-signin" method="post" action="update_prof_org.jsp">
  <div class="text-center mb-4">
    
    <h1 class=" mb-3 font-weight-normal">Update Profile</h1>
   
  </div>
                      
    <div class="form-label-group">
      <label for="input">Name</label>
      <input type="text" id="inputEmail" class="form-control" value='<%=db.rst.getString(2)%>' name="name" placeholder="Enter Name" required autofocus readonly>
    </div>
                      
  <div class="form-label-group">
      <label for="inputEmail">Email address</label>
      <input type="email" id="inputEmail" class="form-control"  value="<%=email%>" name="email" placeholder="Email address" readonly>
  </div>

                      <div class="form-label-group">
                          <label for="inputEmail">Mobile Number</label>
                          <input type="text" id="mob" class="form-control" name="mob" value='<%=mobile%>' placeholder="Enter Mobile number" required autofocus>
    
  </div>
            <br>
            <button class="btn btn-lg btn-danger btn-block" type="submit" ><span class="fa fa-edit"></span>&nbsp;Update</button>
        </form>
      </div>
    </div>
  </div>
                        
<!--                        Change Password-->
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Change Password
        </button>
      </h2>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body bg-dark text-white">
        <form class="form-signin" method="post" action="change_pswd_org.jsp">
  <div class="text-center mb-4">
    
    <h1 class=" mb-3 font-weight-normal">Update Password</h1>
   
  </div>
              
  
    <div class="form-label-group">
      <label for="input">Old Password</label>
      <input type="password" id="" class="form-control" name="op" placeholder="Enter Old Password" required autofocus>
    
  </div>
                      
  <div class="form-label-group">
      <label for="input">New Password</label>
      <input type="password" id="" class="form-control" name="np" placeholder="Enter new Password" required autofocus>
    
  </div>

                      <div class="form-label-group">
                          <label for="input">Confirm Password</label>
    <input type="password" id="" class="form-control" name="cp" placeholder="Confirm Password" required autofocus>
    
  </div>
            <br>
            <button class="btn btn-lg btn-danger btn-block" type="submit" ><span class="fa fa-edit"></span>&nbsp;Change</button>
        </form>
      </div>
    </div>
  </div>
                        
<!--                        Update-->
  <div class="card">
    <div class="card-header" id="headingThree">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
            Update Organization Details
        </button>
      </h2>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
      <div class="card-body bg-dark text-white">
        <form class="form-sigin" method="post" action="update_organization.jsp">
  <div class="text-center mb-4">
    
    <h2 class=" mb-3 font-weight-normal">Update Organization Or Hospital</h2>
   
  </div>
   <div class="form-label-group">
      <label for="input">Name</label>
      <input type="text" id="inputEmail" class="form-control" value='<%=db.rst.getString(2)%>' name="oname" placeholder="Enter Name" required autofocus readonly>
    </div>

  <div class="form-label-group">
    <label for="input">City</label>
    <input type="text" id="" class="form-control" value="<%=city%>"  name="city" placeholder="Enter City" required autofocus>
    
  </div>
            <div class="form-label-group">
    <label for="input">State</label>
    <select class="form-control" value="<%=state%>"  name='state'>
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
                      
  <div class="form-label-group">
       <label for="input">Pincode</label>
    <input type="text" id="" class="form-control" value="<%=pncd%>"  name="pncd" placeholder="Pincode" required>
   
  </div>
            <div class="form-label-group">
    <label for="">Blood Component Available</label>
    <select class="form-control" id="" value="<%=bca%>"  name="bca" required>
        <option>Select</option>
      <option>Yes</option>
      <option>No</option>
    </select>
        </div> 
            
            <div class="form-label-group">
    <label for="">Service Time</label>
    <select class="form-control" id="" value="<%=st%>"  name="st" required>
        <option>Select</option>
      <option>24Hr</option>
      <option>12Hr</option>
    </select>
        </div> 
          
        <div class="form-label-group">
            <label for="input">Licence Number</label>
    <input type="text" id="" class="form-control"  value="<%=lcn_no%>" name="lcn_no" placeholder="License Number" required>
        </div>  
        
            <div class="form-label-group">
            <label for="input">Licence Date</label>
    <input type="date" id="" class="form-control" value="<%=lcn_date%>"  name="lcn_date" placeholder="License Date" required>
        </div>  
            <br>
            <button class="btn btn-lg btn-danger btn-block" type="submit" ><span class="fa fa-edit"></span>&nbsp;Update</button>
</form>
      </div>
    </div>
  </div>
</div>
                </div>
            </div>
        </div>
        
        <!--Add temp doner-->
 <div class="modal" tabindex="-1" role="dialog" id="doner_reg">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header bg-danger text-white">
        <h5 class="modal-title">Registration</h5>
        <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body bg-dark text-white">
        <form class="form-sigin" method="post" action="temp_doner.jsp">
  <div class="text-center mb-4">
    
    <h3 class=" mb-3 font-weight-normal">Doner Detail's</h3>
   
  </div>
                      
    
                      
  <div class="form-label-group">
      <label for="input">Name of Doner</label>
      <input type="text" id="" class="form-control" name="name" placeholder="Name *" required autofocus>
  </div>
            
  <div class="form-label-group">
      <label for="input">Email</label>
      <input type="email" id="" class="form-control" name="email" placeholder="Email *" required autofocus>
  </div>
            
  <div class="form-label-group">
      <label for="input">Mobile</label>
      <input type="varchar" id="" maxlength='10' minlength="10"class="form-control" name="mob" placeholder="Mobile *" required autofocus>
  </div>               

  <div class="form-label-group">
    <label for="input">Blood Group</label>
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
            <div class="form-label-group">
    <label for="input">City</label>
    <input type="text" id="" class="form-control"   name="city" placeholder="Enter City" required autofocus>
    
  </div>
             <div class="form-label-group">
    <label for="input">State</label>
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
                      
  <div class="form-label-group">
    <label for="input">Blood Donate</label>
    <select class="form-control" name='bld_don'>
                                             <option class="hidden"  selected disabled>Blood Donate</option>
                                             <option value="1 Unit">1 Unit</option>
                                             <option value="2 Unit">2 Unit</option>
                                             <option value="3 Unit">3 Unit</option>
                                             <option value="4 Unit">4 Unit</option>
                                             
                                            </select>
    
  </div>
            
      <div class="form-label-group">
      <label for="input">Name of Org/Hospital</label>
      <input type="text" id="" class="form-control" value='<%=name%>' name="oname" placeholder="Name of Org/Hospital *" readonly>
    
  </div>    
          
  
 <div class="modal-footer">
          <button class="btn btn-lg btn-primary btn-block" type="submit" ><span class="fa fa-plus"></span>&nbsp;Register</button>
      </div>
        </form>
      </div>
     
    </div>
  </div>
</div>
      
       <!--Camp Registration-->
 <div class="modal" tabindex="-1" role="dialog" id="camp_reg">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header bg-danger text-white">
        <h5 class="modal-title">Registration</h5>
        <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body bg-dark text-white">
        <form class="form-sigin" method="post" action="camp_counter_reg.jsp">
  <div class="text-center mb-4">
    
    <h3 class=" mb-3 font-weight-normal">Camp/Counter Registration</h3>
   
  </div>
                      
    
                      
  <div class="form-label-group">
      <label for="input">Camp/Counter name</label>
      <input type="text" id="" class="form-control" name="cname" placeholder="Name *" required autofocus>
   </div>
            
   <div class="form-label-group">
      <label for="input">Camp/Counter Date</label>
      <input type="date" id="" class="form-control" name="cdate" placeholder="Date *" required autofocus>
  </div>     
            
   <div class="form-label-group">
      <label for="input">Total Unit Donation</label>
      <input type="text" id="" class="form-control" name="tot_unit" placeholder="Total Unit *" required autofocus>
  </div>        

  <div class="form-label-group">
      <label for="input">Total Person</label>
      <input type="text" id="" class="form-control" name="tot_per" placeholder="Total Person *" required autofocus>
  </div>    
            
      <div class="form-label-group">
      <label for="input">Name of Org/Hospital</label>
      <input type="text" id="" class="form-control" value="<%=db.rst.getString(2)%>" name="oname" placeholder="Name of Org/Hospital *" readonly>
      </div>    
          
  
 <div class="modal-footer">
          <button class="btn btn-lg btn-primary btn-block" type="submit" ><span class="fa fa-plus"></span>&nbsp;Register</button>
      </div>
        </form>
      </div>
     
    </div>
  </div>
</div>
      
              <%
            }
            }catch(Exception e)
            {
            e.printStackTrace();
            }
              %>
        <!--Script -->
<!--<script type="text/javascript" src="files/script.js"></script>-->
<script src="https://kit.fontawesome.com/da8043735a.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="files/boot1.js"></script>
<script type="text/javascript" src="files/boot2.js"></script>
<script type="text/javascript" src="files/boot3.js"></script>
<script type="text/javascript" src="files/jquery.js"></script>
        
    </body>
</html>
