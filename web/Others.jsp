<%-- 
    Document   : Others
    Created on : May 3, 2021, 9:08:54 PM
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
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <h1>Welcome <%=name%></h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a href="OrganizationPanel.jsp" class="nav-link">My Profile</a>
                        </li>
                    
                    
                    <li class="nav-item">
                            <a href="#" data-target="#doner_reg" data-toggle="modal" class="nav-link">Doner Registration</a>
                    </li>
                
                        
                     <li class="nav-item">
                            <a href="Details.jsp" class="nav-link">See Details</a>
                     </li>
                        
                        
                     <li class="nav-item">
                            <a href="Others.jsp" class="nav-link active">Others</a>
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
               <div class="col-lg-4 col-md-4 col-sm-12">
                   <%
             try {
                 
            db.pstmt=db.con.prepareStatement("select count(name) from temp_doner where org_hosp_name='"+name+"' ");
            db.rst=db.pstmt.executeQuery();
            if(db.rst.next())
            {
                %>
                    <div class="card" style="width: 18rem;">
                     <img src="images/temp_doner.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                    <h5 class="card-title">Total Doner</h5>
                    <p class="card-text"></p>
                    <a href="#" data-target="#tot_don" data-toggle="modal" class="btn btn-primary"><%=db.rst.getString(1)%></a>
                    </div>
                    </div>
                    <%
                        }} 
                     catch(Exception e)
                        {
                      e.printStackTrace();
                          }
                         %>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
                     <%
             try {
            db.pstmt=db.con.prepareStatement("select count(camp_id) from camp where camp_org_by='"+name+"'");
            db.rst=db.pstmt.executeQuery();
            if(db.rst.next())
            {
                %>
                    <div class="card" style="width: 18rem;">
                     <img src="images/camp.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                    <h5 class="card-title">Total Camp/Counter</h5>
                    <p class="card-text"></p>
                    <a href="#" data-target="#tot_camp" data-toggle="modal" class="btn btn-primary"><%=db.rst.getString(1)%></a>
                    </div>
                    </div>
                       <%
                        }} 
                     catch(Exception e)
                        {
                      e.printStackTrace();
                          }
                         %>
                </div>   
                <div class="col-lg-4 col-md-4 col-sm-12">
                     <%
             try {
            db.pstmt=db.con.prepareStatement("select sum(blood_donate) from temp_doner where org_hosp_name='"+name+"'");
            db.rst=db.pstmt.executeQuery();
            if(db.rst.next())
            {
                %>
                    <div class="card" style="width: 18rem;">
                     <img src="images/tunit.jpg"  style="height: 180px;" class="card-img-top" alt="...">
                    <div class="card-body">
                    <h5 class="card-title">Total Unit Available</h5>
                    <p class="card-text"></p>
                    <a href="#" class="btn btn-primary"><%=db.rst.getString(1)%> Unit</a>
                    </div>
                    </div>
                </div>
                        <%
                        }} 
                     catch(Exception e)
                        {
                      e.printStackTrace();
                          }
                         %>
            </div>
            
            
            <div class="row mt-5">
                <div class="col-lg-3 col-md- col-sm-12">
                     <%
             try {
            db.pstmt=db.con.prepareStatement("select count(blood_group) from temp_doner where blood_group='A-' and org_hosp_name='"+name+"'");
            db.rst=db.pstmt.executeQuery();
            if(db.rst.next())
            {
                %>
                    <div class="card bg-info text-white" style="width: 12rem;">
                      <div class="card-body">                              
                        <h2 class="card-title">A-</h2>
                       <p class="card-text"></p>
                      <a href="#" data-target="#a_neg" data-toggle="modal" class="btn btn-danger"><%=db.rst.getString(1)%></a>
                        </div>
                       </div>
                    <%
                        }} 
                     catch(Exception e)
                        {
                      e.printStackTrace();
                          }
                         %>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12">
                     <%
             try {
            db.pstmt=db.con.prepareStatement("select count(blood_group) from temp_doner where blood_group='A+' and org_hosp_name='"+name+"'");
            db.rst=db.pstmt.executeQuery();
            if(db.rst.next())
            {
                %>
                    <div class="card bg-success text-white" style="width: 12rem;">
                      <div class="card-body">                              
                        <h2 class="card-title">A+</h2>
                       <p class="card-text"></p>
                      <a href="#" data-target="#a_pos" data-toggle="modal" class="btn btn-danger"><%=db.rst.getString(1)%></a>
                        </div>
                       </div>
                    <%
                        }} 
                     catch(Exception e)
                        {
                      e.printStackTrace();
                          }
                         %>
                </div>   
                <div class="col-lg-3 col-md-3 col-sm-12">
                     <%
             try {
            db.pstmt=db.con.prepareStatement("select count(blood_group) from temp_doner where blood_group='AB-' and org_hosp_name='"+name+"'");
            db.rst=db.pstmt.executeQuery();
            if(db.rst.next())
            {
                %>
                    <div class="card bg-warning text-white" style="width: 12rem;">
                      <div class="card-body">                              
                        <h2 class="card-title">AB-</h2>
                       <p class="card-text"></p>
                      <a href="#" data-target="#ab_neg" data-toggle="modal" class="btn btn-danger"><%=db.rst.getString(1)%></a>
                        </div>
                       </div>
                    <%
                        }} 
                     catch(Exception e)
                        {
                      e.printStackTrace();
                          }
                         %>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12">
                     <%
             try {
            db.pstmt=db.con.prepareStatement("select count(blood_group) from temp_doner where blood_group='AB+' and org_hosp_name='"+name+"'");
            db.rst=db.pstmt.executeQuery();
            if(db.rst.next())
            {
                %>
                    <div class="card bg-secondary text-white" style="width: 12rem;">
                      <div class="card-body">                              
                        <h2 class="card-title">AB+</h2>
                       <p class="card-text"></p>
                      <a href="#" data-target="#ab_pos" data-toggle="modal" class="btn btn-danger"><%=db.rst.getString(1)%></a>
                        </div>
                       </div>
                    <%
                        }} 
                     catch(Exception e)
                        {
                      e.printStackTrace();
                          }
                         %>
                </div>
            </div>
                
                <div class="row mt-5">
                <div class="col-lg-3 col-md- col-sm-12">
                     <%
             try {
            db.pstmt=db.con.prepareStatement("select count(blood_group) from temp_doner where blood_group='B-' and org_hosp_name='"+name+"'");
            db.rst=db.pstmt.executeQuery();
            if(db.rst.next())
            {
                %>
                    <div class="card bg-info text-white" style="width: 12rem;">
                      <div class="card-body">                              
                        <h2 class="card-title">B-</h2>
                       <p class="card-text"></p>
                      <a href="#"  data-target="#b_neg" data-toggle="modal" class="btn btn-danger"><%=db.rst.getString(1)%></a>
                        </div>
                       </div>
                    <%
                        }} 
                     catch(Exception e)
                        {
                      e.printStackTrace();
                          }
                         %>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12">
                     <%
             try {
            db.pstmt=db.con.prepareStatement("select count(blood_group) from temp_doner where blood_group='B+' and org_hosp_name='"+name+"'");
            db.rst=db.pstmt.executeQuery();
            if(db.rst.next())
            {
                %>
                    <div class="card bg-success text-white" style="width: 12rem;">
                      <div class="card-body">                              
                        <h2 class="card-title">B+</h2>
                       <p class="card-text"></p>
                      <a href="#"  data-target="#b_pos" data-toggle="modal" class="btn btn-danger"><%=db.rst.getString(1)%></a>
                        </div>
                       </div>
                    <%
                        }} 
                     catch(Exception e)
                        {
                      e.printStackTrace();
                          }
                         %>
                </div>   
                <div class="col-lg-3 col-md-3 col-sm-12">
                     <%
             try {
            db.pstmt=db.con.prepareStatement("select count(blood_group) from temp_doner where blood_group='O-' and org_hosp_name='"+name+"'");
            db.rst=db.pstmt.executeQuery();
            if(db.rst.next())
            {
                %>
                    <div class="card bg-warning text-white" style="width: 12rem;">
                      <div class="card-body">                              
                        <h2 class="card-title">O-</h2>
                       <p class="card-text"></p>
                      <a href="#" data-target="#o_neg" data-toggle="modal" class="btn btn-danger"><%=db.rst.getString(1)%></a>
                        </div>
                       </div>
                    <%
                        }} 
                     catch(Exception e)
                        {
                      e.printStackTrace();
                          }
                         %>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12">
                     <%
             try {
            db.pstmt=db.con.prepareStatement("select count(blood_group) from temp_doner where blood_group='O+' and org_hosp_name='"+name+"'");
            db.rst=db.pstmt.executeQuery();
            if(db.rst.next())
            {
                %>
                    <div class="card bg-secondary text-white" style="width: 12rem;">
                      <div class="card-body">                              
                        <h2 class="card-title">O+</h2>
                       <p class="card-text"></p>
                      <a href="#" data-target="#o_pos" data-toggle="modal" class="btn btn-danger"><%=db.rst.getString(1)%></a>
                        </div>
                       </div>
                    <%
                        }} 
                     catch(Exception e)
                        {
                      e.printStackTrace();
                          }
                         %>
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
      <input type="text" id="" class="form-control" value="<%=name%>" name="oname" placeholder="Name of Org/Hospital *" readonly>
    
  </div>    
          
  
 <div class="modal-footer">
          <button class="btn btn-lg btn-primary btn-block" type="submit" ><span class="fa fa-plus"></span>&nbsp;Register</button>
      </div>
        </form>
      </div>
     
    </div>
  </div>
</div>
      
      
                         <!--A-  Modal-->
                         <div class="modal " tabindex="-1"  id="a_neg">
                        <div class="modal-dialog modal-xl  modal-dialog-scrollable">
                             <div class="modal-content">
                             <div class="modal-header bg-danger text-white">
                             <h5 class="modal-title">A- Doner Detail's</h5>
                            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                          </button>
                          </div>
                             <div class="modal-body">
                               <table class="table table-striped table-hover">
                                             <thead class="bg-dark text-white text-center">
                                                 
                                                 <tr>
                                                     <th>#</th>
                                                     <th>Name</th>
                                                     <th>Email</th>
                                                     <th>Mobile</th>
                                                     <th>BloodGroup</th>
                                                     <th>City</th>
                                                     <th>State</th>
                                                     <th>Org/Hospital Name</th>
                                                     <th colspan="1">Action</th>
                                                 </tr>
                                             </thead>
                                             <tbody>
                                                 <%
                                                     
                                                     db.pstmt=db.con.prepareStatement("select * from temp_doner where blood_group='A-' and org_hosp_name='"+name+"'");
                                                     db.rst=db.pstmt.executeQuery();
                                                     while(db.rst.next())
                                                     {                
                                                      String temp_d_id=db.rst.getString(1);
                                                  %>
                                                 <tr class="text-center">
                                                     <td><%=db.rst.getString(1)%></td>
                                                     <td><%=db.rst.getString(2)%></td>
                                                     <td><%=db.rst.getString(3)%></td>
                                                     <td><%=db.rst.getString(4)%></td>
                                                     <td><%=db.rst.getString(5)%></td>
                                                     <td><%=db.rst.getString(6)%></td>
                                                     <td><%=db.rst.getString(7)%></td>
                                                     <td><%=db.rst.getString(9)%></td>
                                                     <td><a href="delete_temp_doner.jsp?temp_d_id=<%=temp_d_id%>" class="btn btn-danger"><i class="fas fa-trash-alt">&nbsp;</i></a></td>
                                                     
                                                 </tr>
                                             </tbody>
                                             <%}%>
                                         </table>
                              </div>
                             <div class="modal-footer">
                               
                           
                         </div>
                          </div>
                      </div>
                          </div>
                                         
                                         <!--A+  Modal-->
                         <div class="modal " tabindex="-1"  id="a_pos">
                        <div class="modal-dialog modal-xl  modal-dialog-scrollable">
                             <div class="modal-content">
                             <div class="modal-header bg-danger text-white">
                             <h5 class="modal-title">A+ Doner Detail's</h5>
                            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                          </button>
                          </div>
                             <div class="modal-body">
                               <table class="table table-striped table-hover">
                                             <thead class="bg-dark text-white text-center">
                                                 
                                                 <tr>
                                                     <th>#</th>
                                                     <th>Name</th>
                                                     <th>Email</th>
                                                     <th>Mobile</th>
                                                     <th>BloodGroup</th>
                                                     <th>City</th>
                                                     <th>State</th>
                                                     <th>Org/Hospital Name</th>
                                                     <th colspan="1">Action</th>
                                                 </tr>
                                             </thead>
                                             <tbody>
                                                 <%
                                                     
                                                     db.pstmt=db.con.prepareStatement("select * from temp_doner where blood_group='A+' and org_hosp_name='"+name+"'");
                                                     db.rst=db.pstmt.executeQuery();
                                                     while(db.rst.next())
                                                     {                
                                                      String temp_d_id=db.rst.getString(1);
                                                  %>
                                                 <tr class="text-center">
                                                     <td><%=db.rst.getString(1)%></td>
                                                     <td><%=db.rst.getString(2)%></td>
                                                     <td><%=db.rst.getString(3)%></td>
                                                     <td><%=db.rst.getString(4)%></td>
                                                     <td><%=db.rst.getString(5)%></td>
                                                     <td><%=db.rst.getString(6)%></td>
                                                     <td><%=db.rst.getString(7)%></td>
                                                     <td><%=db.rst.getString(9)%></td>
                                                     <td><a href="delete_temp_doner.jsp?temp_d_id=<%=temp_d_id%>" class="btn btn-danger"><i class="fas fa-trash-alt">&nbsp;</i></a></td>
                                                     
                                                 </tr>
                                             </tbody>
                                             <%}%>
                                         </table>
                              </div>
                             <div class="modal-footer">
                               
                            
                         </div>
                          </div>
                      </div>
                          </div>
                                         
                                         <!--AB-  Modal-->
                         <div class="modal " tabindex="-1"  id="ab_neg">
                        <div class="modal-dialog modal-xl  modal-dialog-scrollable">
                             <div class="modal-content">
                             <div class="modal-header bg-danger text-white">
                             <h5 class="modal-title">AB- Doner Detail's</h5>
                            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                          </button>
                          </div>
                             <div class="modal-body">
                               <table class="table table-striped table-hover">
                                             <thead class="bg-dark text-white text-center">
                                                 
                                                 <tr>
                                                     <th>#</th>
                                                     <th>Name</th>
                                                     <th>Email</th>
                                                     <th>Mobile</th>
                                                     <th>BloodGroup</th>
                                                     <th>City</th>
                                                     <th>State</th>
                                                     <th>Org/Hospital Name</th>
                                                     <th colspan="1">Action</th>
                                                 </tr>
                                             </thead>
                                             <tbody>
                                                 <%
                                                     
                                                     db.pstmt=db.con.prepareStatement("select * from temp_doner where blood_group='AB-' and org_hosp_name='"+name+"'");
                                                     db.rst=db.pstmt.executeQuery();
                                                     while(db.rst.next())
                                                     {                
                                                      String temp_d_id=db.rst.getString(1);
                                                  %>
                                                 <tr class="text-center">
                                                     <td><%=db.rst.getString(1)%></td>
                                                     <td><%=db.rst.getString(2)%></td>
                                                     <td><%=db.rst.getString(3)%></td>
                                                     <td><%=db.rst.getString(4)%></td>
                                                     <td><%=db.rst.getString(5)%></td>
                                                     <td><%=db.rst.getString(6)%></td>
                                                     <td><%=db.rst.getString(7)%></td>
                                                     <td><%=db.rst.getString(9)%></td>
                                                     <td><a href="delete_temp_doner.jsp?temp_d_id=<%=temp_d_id%>" class="btn btn-danger"><i class="fas fa-trash-alt">&nbsp;</i></a></td>
                                                     
                                                 </tr>
                                             </tbody>
                                             <%}%>
                                         </table>
                              </div>
                             <div class="modal-footer">
                               
                           
                         </div>
                          </div>
                      </div>
                          </div>
                                         
                                         <!--AB+  Modal-->
                         <div class="modal " tabindex="-1"  id="ab_pos">
                        <div class="modal-dialog modal-xl  modal-dialog-scrollable">
                             <div class="modal-content">
                             <div class="modal-header bg-danger text-white">
                             <h5 class="modal-title">AB+ Doner Detail's</h5>
                            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                          </button>
                          </div>
                             <div class="modal-body">
                               <table class="table table-striped table-hover">
                                             <thead class="bg-dark text-white text-center">
                                                 
                                                 <tr>
                                                     <th>#</th>
                                                     <th>Name</th>
                                                     <th>Email</th>
                                                     <th>Mobile</th>
                                                     <th>BloodGroup</th>
                                                     <th>City</th>
                                                     <th>State</th>
                                                     <th>Org/Hospital Name</th>
                                                     <th colspan="1">Action</th>
                                                 </tr>
                                             </thead>
                                             <tbody>
                                                 <%
                                                     
                                                     db.pstmt=db.con.prepareStatement("select * from temp_doner where blood_group='AB+' and org_hosp_name='"+name+"'");
                                                     db.rst=db.pstmt.executeQuery();
                                                     while(db.rst.next())
                                                     {                
                                                      String temp_d_id=db.rst.getString(1);
                                                  %>
                                                 <tr class="text-center">
                                                     <td><%=db.rst.getString(1)%></td>
                                                     <td><%=db.rst.getString(2)%></td>
                                                     <td><%=db.rst.getString(3)%></td>
                                                     <td><%=db.rst.getString(4)%></td>
                                                     <td><%=db.rst.getString(5)%></td>
                                                     <td><%=db.rst.getString(6)%></td>
                                                     <td><%=db.rst.getString(7)%></td>
                                                     <td><%=db.rst.getString(9)%></td>
                                                     <td><a href="delete_temp_doner.jsp?temp_d_id=<%=temp_d_id%>" class="btn btn-danger"><i class="fas fa-trash-alt">&nbsp;</i></a></td>
                                                     
                                                 </tr>
                                             </tbody>
                                             <%}%>
                                         </table>
                              </div>
                             <div class="modal-footer">
                               
                            
                         </div>
                          </div>
                      </div>
                          </div>
                                         
                                         <!--B-  Modal-->
                         <div class="modal " tabindex="-1"  id="b_neg">
                        <div class="modal-dialog modal-xl  modal-dialog-scrollable">
                             <div class="modal-content">
                             <div class="modal-header bg-danger text-white">
                             <h5 class="modal-title">B- Doner Detail's</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                          </button>
                          </div>
                             <div class="modal-body">
                               <table class="table table-striped table-hover">
                                             <thead class="bg-dark text-white text-center">
                                                 
                                                 <tr>
                                                     <th>#</th>
                                                     <th>Name</th>
                                                     <th>Email</th>
                                                     <th>Mobile</th>
                                                     <th>BloodGroup</th>
                                                     <th>City</th>
                                                     <th>State</th>
                                                     <th>Org/Hospital Name</th>
                                                     <th colspan="1">Action</th>
                                                 </tr>
                                             </thead>
                                             <tbody>
                                                 <%
                                                     
                                                     db.pstmt=db.con.prepareStatement("select * from temp_doner where blood_group='B-' and org_hosp_name='"+name+"'");
                                                     db.rst=db.pstmt.executeQuery();
                                                     while(db.rst.next())
                                                     {                
                                                      String temp_d_id=db.rst.getString(1);
                                                  %>
                                                 <tr class="text-center">
                                                     <td><%=db.rst.getString(1)%></td>
                                                     <td><%=db.rst.getString(2)%></td>
                                                     <td><%=db.rst.getString(3)%></td>
                                                     <td><%=db.rst.getString(4)%></td>
                                                     <td><%=db.rst.getString(5)%></td>
                                                     <td><%=db.rst.getString(6)%></td>
                                                     <td><%=db.rst.getString(7)%></td>
                                                     <td><%=db.rst.getString(9)%></td>
                                                     <td><a href="delete_temp_doner.jsp?temp_d_id=<%=temp_d_id%>" class="btn btn-danger"><i class="fas fa-trash-alt">&nbsp;</i></a></td>
                                                     
                                                 </tr>
                                             </tbody>
                                             <%}%>
                                         </table>
                              </div>
                             <div class="modal-footer">
                               
                           
                         </div>
                          </div>
                      </div>
                          </div>
                                         
                                         <!--B+  Modal-->
                         <div class="modal " tabindex="-1"  id="b_pos">
                        <div class="modal-dialog modal-xl  modal-dialog-scrollable">
                             <div class="modal-content">
                             <div class="modal-header bg-danger text-white">
                             <h5 class="modal-title">B+ Doner Detail's</h5>
                            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                          </button>
                          </div>
                             <div class="modal-body">
                               <table class="table table-striped table-hover">
                                             <thead class="bg-dark text-white text-center">
                                                 
                                                 <tr>
                                                     <th>#</th>
                                                     <th>Name</th>
                                                     <th>Email</th>
                                                     <th>Mobile</th>
                                                     <th>BloodGroup</th>
                                                     <th>City</th>
                                                     <th>State</th>
                                                     <th>Org/Hospital Name</th>
                                                     <th colspan="1">Action</th>
                                                 </tr>
                                             </thead>
                                             <tbody>
                                                 <%
                                                     
                                                     db.pstmt=db.con.prepareStatement("select * from temp_doner where blood_group='B+' and org_hosp_name='"+name+"'");
                                                     db.rst=db.pstmt.executeQuery();
                                                     while(db.rst.next())
                                                     {                
                                                      String temp_d_id=db.rst.getString(1);
                                                  %>
                                                 <tr class="text-center">
                                                     <td><%=db.rst.getString(1)%></td>
                                                     <td><%=db.rst.getString(2)%></td>
                                                     <td><%=db.rst.getString(3)%></td>
                                                     <td><%=db.rst.getString(4)%></td>
                                                     <td><%=db.rst.getString(5)%></td>
                                                     <td><%=db.rst.getString(6)%></td>
                                                     <td><%=db.rst.getString(7)%></td>
                                                     <td><%=db.rst.getString(9)%></td>
                                                     <td><a href="delete_temp_doner.jsp?temp_d_id=<%=temp_d_id%>" class="btn btn-danger"><i class="fas fa-trash-alt">&nbsp;</i></a></td>
                                                     
                                                 </tr>
                                             </tbody>
                                             <%}%>
                                         </table>
                              </div>
                             <div class="modal-footer">
                               
                            
                         </div>
                          </div>
                      </div>
                          </div>
                                         
                                         <!--O-  Modal-->
                         <div class="modal " tabindex="-1"  id="o_neg">
                        <div class="modal-dialog modal-xl  modal-dialog-scrollable">
                             <div class="modal-content">
                             <div class="modal-header bg-danger text-white">
                             <h5 class="modal-title">O- Doner Detail's</h5>
                            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                          </button>
                          </div>
                             <div class="modal-body">
                               <table class="table table-striped table-hover">
                                             <thead class="bg-dark text-white text-center">
                                                 
                                                 <tr>
                                                     <th>#</th>
                                                     <th>Name</th>
                                                     <th>Email</th>
                                                     <th>Mobile</th>
                                                     <th>BloodGroup</th>
                                                     <th>City</th>
                                                     <th>State</th>
                                                     <th>Org/Hospital Name</th>
                                                     <th colspan="1">Action</th>
                                                 </tr>
                                             </thead>
                                             <tbody>
                                                 <%
                                                     
                                                     db.pstmt=db.con.prepareStatement("select * from temp_doner where blood_group='O-' and org_hosp_name='"+name+"'");
                                                     db.rst=db.pstmt.executeQuery();
                                                     while(db.rst.next())
                                                     {                
                                                      String temp_d_id=db.rst.getString(1);
                                                  %>
                                                 <tr class="text-center">
                                                     <td><%=db.rst.getString(1)%></td>
                                                     <td><%=db.rst.getString(2)%></td>
                                                     <td><%=db.rst.getString(3)%></td>
                                                     <td><%=db.rst.getString(4)%></td>
                                                     <td><%=db.rst.getString(5)%></td>
                                                     <td><%=db.rst.getString(6)%></td>
                                                     <td><%=db.rst.getString(7)%></td>
                                                     <td><%=db.rst.getString(9)%></td>
                                                     <td><a href="delete_temp_doner.jsp?temp_d_id=<%=temp_d_id%>" class="btn btn-danger"><i class="fas fa-trash-alt">&nbsp;</i></a></td>
                                                     
                                                 </tr>
                                             </tbody>
                                             <%}%>
                                         </table>
                              </div>
                             <div class="modal-footer">
                               
                            
                         </div>
                          </div>
                      </div>
                          </div>
                                         
                                         <!--O+  Modal-->
                         <div class="modal " tabindex="-1"  id="o_pos">
                        <div class="modal-dialog modal-xl  modal-dialog-scrollable">
                             <div class="modal-content">
                             <div class="modal-header bg-danger text-white">
                             <h5 class="modal-title">O+ Doner Detail's</h5>
                            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                          </button>
                          </div>
                             <div class="modal-body">
                               <table class="table table-striped table-hover">
                                             <thead class="bg-dark text-white text-center">
                                                 
                                                 <tr>
                                                     <th>#</th>
                                                     <th>Name</th>
                                                     <th>Email</th>
                                                     <th>Mobile</th>
                                                     <th>BloodGroup</th>
                                                     <th>City</th>
                                                     <th>State</th>
                                                     <th>Org/Hospital Name</th>
                                                     <th colspan="1">Action</th>
                                                 </tr>
                                             </thead>
                                             <tbody>
                                                 <%
                                                     
                                                     db.pstmt=db.con.prepareStatement("select * from temp_doner where blood_group='O+' and org_hosp_name='"+name+"'");
                                                     db.rst=db.pstmt.executeQuery();
                                                     while(db.rst.next())
                                                     {                
                                                      String temp_d_id=db.rst.getString(1);
                                                  %>
                                                 <tr class="text-center">
                                                     <td><%=db.rst.getString(1)%></td>
                                                     <td><%=db.rst.getString(2)%></td>
                                                     <td><%=db.rst.getString(3)%></td>
                                                     <td><%=db.rst.getString(4)%></td>
                                                     <td><%=db.rst.getString(5)%></td>
                                                     <td><%=db.rst.getString(6)%></td>
                                                     <td><%=db.rst.getString(7)%></td>
                                                     <td><%=db.rst.getString(9)%></td>
                                                     <td><a href="delete_temp_doner.jsp?temp_d_id=<%=temp_d_id%>" class="btn btn-danger"><i class="fas fa-trash-alt">&nbsp;</i></a></td>
                                                     
                                                 </tr>
                                             </tbody>
                                             <%}%>
                                         </table>
                              </div>
                             <div class="modal-footer">
                               
                            
                         </div>
                          </div>
                      </div>
                          </div>
                                         
                                          <!--Total Doner-->
                         <div class="modal " tabindex="-1"  id="tot_don">
                        <div class="modal-dialog modal-xl  modal-dialog-scrollable">
                             <div class="modal-content">
                             <div class="modal-header bg-danger text-white">
                             <h5 class="modal-title">Doner Detail's</h5>
                            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                          </button>
                          </div>
                             <div class="modal-body">
                               <table class="table table-striped table-hover">
                                             <thead class="bg-dark text-white text-center">
                                                 
                                                 <tr>
                                                     <th>#</th>
                                                     <th>Name</th>
                                                     <th>Email</th>
                                                     <th>Mobile</th>
                                                     <th>BloodGroup</th>
                                                     <th>City</th>
                                                     <th>State</th>
                                                     <th>Org/Hospital Name</th>
                                                     <th colspan="1">Action</th>
                                                 </tr>
                                             </thead>
                                             <tbody>
                                                 <%
                                                     
                                                     db.pstmt=db.con.prepareStatement("select * from temp_doner where org_hosp_name='"+name+"'");
                                                     db.rst=db.pstmt.executeQuery();
                                                     while(db.rst.next())
                                                     {                
                                                      String temp_d_id=db.rst.getString(1);
                                                  %>
                                                 <tr class="text-center">
                                                     <td><%=db.rst.getString(1)%></td>
                                                     <td><%=db.rst.getString(2)%></td>
                                                     <td><%=db.rst.getString(3)%></td>
                                                     <td><%=db.rst.getString(4)%></td>
                                                     <td><%=db.rst.getString(5)%></td>
                                                     <td><%=db.rst.getString(6)%></td>
                                                     <td><%=db.rst.getString(7)%></td>
                                                     <td><%=db.rst.getString(9)%></td>
                                                     <td><a href="delete_temp_doner_byadmin.jsp?temp_d_id=<%=temp_d_id%>" class="btn btn-danger"><i class="fas fa-trash-alt">&nbsp;</i></a></td>
                                                     
                                                 </tr>
                                             </tbody>
                                             <%}%>
                                         </table>
                              </div>
                             <div class="modal-footer">
                               
                            
                         </div>
                          </div>
                      </div>
                          </div>
                                         
                                          <!--Total Camp/Counter -->
                         <div class="modal " tabindex="-1"  id="tot_camp">
                        <div class="modal-dialog modal-xl  modal-dialog-scrollable">
                             <div class="modal-content">
                             <div class="modal-header bg-danger text-white">
                             <h5 class="modal-title">Camp/Counter Details</h5>
                            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                          </button>
                          </div>
                             <div class="modal-body">
                               <table class="table table-striped table-hover">
                                             <thead class="bg-dark text-white text-center">
                                                 
                                                 <tr>
                                                     <th>#</th>
                                                     <th>Camp/Counter Name</th>
                                                     <th>Camp/Counter Date</th>
                                                     <th>Total Unit Donation</th>
                                                     <th>Total Person</th>
                                                     <th>Organized By</th>
                                                     
                                                     <th colspan="1">Action</th>
                                                 </tr>
                                             </thead>
                                             <tbody>
                                                 <%
                                                     
                                                     db.pstmt=db.con.prepareStatement("select * from camp where camp_org_by='"+name+"'");
                                                     db.rst=db.pstmt.executeQuery();
                                                     while(db.rst.next())
                                                     {                
                                                      String camp_id=db.rst.getString(1);
                                                  %>
                                                 <tr class="text-center">
                                                     <td><%=db.rst.getString(1)%></td>
                                                     <td><%=db.rst.getString(2)%></td>
                                                     <td><%=db.rst.getString(3)%></td>
                                                     <td><%=db.rst.getString(4)%></td>
                                                     <td><%=db.rst.getString(5)%></td>
                                                     <td><%=db.rst.getString(6)%></td>
                                                    
                                                    
                                                     <td><a href="delete_camp.jsp?camp_id=<%=camp_id%>" class="btn btn-danger"><i class="fas fa-trash-alt">&nbsp;</i></a></td>
                                                     
                                                 </tr>
                                             </tbody>
                                             <%}%>
                                         </table>
                              </div>
                             <div class="modal-footer">
                               
                           
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
      <input type="text" id="" class="form-control" value="<%=name%>" name="oname" placeholder="Name of Org/Hospital *" readonly>
      </div>    
          
  
 <div class="modal-footer">
          <button class="btn btn-lg btn-primary btn-block" type="submit" ><span class="fa fa-plus"></span>&nbsp;Register</button>
      </div>
        </form>
      </div>
     
    </div>
  </div>
</div>
                               
        <!--Script -->
<!--<script type="text/javascript" src="files/script.js"></script>-->
<script src="https://kit.fontawesome.com/da8043735a.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="files/boot1.js"></script>
<script type="text/javascript" src="files/boot2.js"></script>
<script type="text/javascript" src="files/boot3.js"></script>
<script type="text/javascript" src="files/jquery.js"></script>
        
    </body>
</html>


