<%-- 
    Document   : View_Organization
    Created on : Jun 15, 2021, 3:37:54 PM
    Author     : Deepankar  Singh
--%>

<%@page import="DB.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    dbcon db=new dbcon();
    String org_hosp_id=request.getParameter("org_hosp_id");
 %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
         
        <title>Dashboard Page</title>
    </head>
    <body>
                                                           <!-- Nav Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#"><img src="images/img2.png" style="height: 30px;width: 30px;" class="rounded-circle">&nbsp;<strong style="font-family: cursive;">Blood Beta Ware</strong></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav ml-auto mr-5">
      <li class="nav-item active">
          <a class="nav-link" href="Dashboard.jsp"><i class="fa fa-home">&nbsp;</i>Home <span class="sr-only">(current)</span></a>
      </li>
     
      
      <li class="nav-item">
          <a class="nav-link" href="doner.jsp"><i class="fas fa-th-list">&nbsp;</i>Doner's</a>
      </li>
      
      <li class="nav-item">
          <a class="nav-link" href="logout.jsp"><i class="fa fa-lock">&nbsp;</i>Logout</a>
      </li>
     </ul>
  </div>
</nav>
                                                   <%
                                                     try{
                                                    
                                        db.pstmt=db.con.prepareStatement("select * from register_hospitals_bborganization where org_hosp_id='"+org_hosp_id+"'");
                                        db.rst=db.pstmt.executeQuery();
                                        if(db.rst.next()){
                                        String name=db.rst.getString(2);
                                                      %>
                   
                          
                                     <div class="container-fluid">
                                         <div class="row mt bg-danger text-white">
                                             <div class="col-lg-3 col-md-3 col-sm-12">
                                                 <h2 style='color: #66BFBF;font-family: curasive;'>Welcome Admin</h2>
                                             </div>
                                             <div class="col-lg-7 col-md-7 col-sm-12">
                                                 <marquee>Admin</marquee>
                                             </div>
                                             <div class="col-lg-1 col-md-1 col-sm-12">
                                                 <%
                                                     try{
                                                    
                                                    db.pstmt=db.con.prepareStatement("select count(c_id) from contactus where status='0'");
                                                   db.rst=db.pstmt.executeQuery();
                                                   if(db.rst.next()){
                                                 int msg=db.rst.getInt(1);
                                                      %>
                                                 <a href="" class="btn btn-success btn-md"><span class="fas fa-bell">&nbsp;</span>
                                                 <span class='badge badge-primary'><%=msg%></span></a>   
                                                 <%}}
                                                     catch(Exception e){
                                                     e.printStackTrace();
                                                    }%>
                                             </div>
                                             <div class="col-lg-1 col-md-1 col-sm-12">
                                                 <a href="logout.jsp" class="btn btn-warning btn-md"><span class="fa fa-power-off">&nbsp;</span></a>
                                             </div>
                                         </div>
                                     </div>    
                                     
                                     <div class="row mt-2">
                                         <div class="col-lg-3 col-md-3 col-sm-12">
                                             <ul class="nav nav-pills flex-column">
                                                 <li class="nav-item">
                                                <a class="nav-link" href="Dashboard.jsp">Home</a>
                                                  </li>
                                                 <li class="nav-item">
                                               <a class="nav-link active" href="M_Organization.jsp">Organization/Hospitals</a>
                                                    </li>
                                             <li class="nav-item">
                                           <a class="nav-link" href="M_Doners.jsp">Doners</a>
                                             </li>
                                             <li class="nav-item">
                                                 <a class="nav-link" href="M_Temp_Doner.jsp">Temporary Doner's</a>
                                             </li>
                                      <li class="nav-item">
                                    <a class="nav-link" href="M_Stock.jsp">Stock</a>
                                         </li>
                                         </ul>
                                         </div>
                                         <div class="col-lg-9 col-md-9 col-sm-12">
                                             <h2 class="bg-dark text-white text-center"><%=name%></h2>
                                             <div class="row">
                                                 
                                             <div class="col-lg-3 col-md-3 col-sm-12">
                                     <%
                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(blood_group) from temp_doner where blood_group='A-' and org_hosp_name='"+name+"'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int an=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-info text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h2 class="card-title">A-</h2>
                                                      <p class="card-text"></p>
                                                      <a href="#" data-target="#a_neg" data-toggle="modal" class="btn btn-danger"><%=an%></a>
                                                  </div>
                                                 </div>
                                      <%}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        %>
                                             </div>
                                             <div class="col-lg-3 col-md-3 col-sm-12">
                                                 <%
                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(blood_group) from temp_doner where blood_group='A+' and org_hosp_name='"+name+"'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int ap=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-success text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h2 class="card-title">A+</h2>
                                                      <p class="card-text"></p>
                                                      <a href="#" data-target="#a_pos" data-toggle="modal" class="btn btn-danger"><%=ap%></a>
                                                  </div>
                                                 </div>
                                                 <%}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        %>
                                             </div>
                                             <div class="col-lg-3 col-md-3 col-sm-12">
                                                  <%
                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(blood_group) from temp_doner where blood_group='AB-' and org_hosp_name='"+name+"'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int abn=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-warning text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h2 class="card-title">AB-</h2>
                                                      <p class="card-text"></p>
                                                      <a href="#"  data-target="#ab_neg" data-toggle="modal"class="btn btn-danger"><%=abn%></a>
                                                  </div>
                                                 </div>
                                                 <%}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        %>
                                             </div>
                                                 <div class="col-lg-3 col-md-3 col-sm-12">
                                                      <%
                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(blood_group) from temp_doner where blood_group='AB+' and org_hosp_name='"+name+"'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int abp=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-secondary text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h2 class="card-title">AB+</h2>
                                                      <p class="card-text"></p>
                                                      <a href="#" data-target="#ab_pos" data-toggle="modal" class="btn btn-danger"><%=abp%></a>
                                                  </div>
                                                 </div>
                                                 <%}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        %>
                                             </div>
                                         </div>
                                       </div>      
                                     </div>
                                     
                                                           <div class='row mt-2'>
                                                               <div class='col-lg-3 col-md-3 col-sm-12'></div>
                                                               <div class='col-lg-9 col-md-9 col-sm-12'>
                                                                   <div class="row">
                                             <div class="col-lg-3 col-md-3 col-sm-12">
                                                  <%
                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(blood_group) from temp_doner where blood_group='B-' and org_hosp_name='"+name+"'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int bn=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-info text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h2 class="card-title">B-</h2>
                                                      <p class="card-text"></p>
                                                      <a href="#" data-target="#b_neg" data-toggle="modal" class="btn btn-danger"><%=bn%></a>
                                                  </div>
                                                 </div>
                                                 <%}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        %>
                                             </div>
                                             <div class="col-lg-3 col-md-3 col-sm-12">
                                                  <%
                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(blood_group) from temp_doner where blood_group='B+' and org_hosp_name='"+name+"'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int bp=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-success text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h2 class="card-title">B+</h2>
                                                      <p class="card-text"></p>
                                                      <a href="#" data-target="#b_pos" data-toggle="modal" class="btn btn-danger"><%=bp%></a>
                                                  </div>
                                                 </div>
                                                 <%}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        %>
                                             </div>
                                             <div class="col-lg-3 col-md-3 col-sm-12">
                                                  <%
                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(blood_group) from temp_doner where blood_group='O-' and org_hosp_name='"+name+"'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int on=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-warning text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h2 class="card-title">O-</h2>
                                                      <p class="card-text"></p>
                                                  <a href="#" data-target="#o_neg" data-toggle="modal" class="btn btn-danger"><%=on%></a>
                                                  </div>
                                                 </div>
                                                 <%}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        %>
                                             </div>
                                                 <div class="col-lg-3 col-md-3 col-sm-12">
                                                      <%
                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(blood_group) from temp_doner where blood_group='O-' and org_hosp_name='"+name+"'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int op=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-secondary text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h2 class="card-title">O+</h2>
                                                      <p class="card-text"></p>
                                                  <a href="#" data-target="#o_pos" data-toggle="modal" class="btn btn-danger"><%=op%></a>
                                                  </div>
                                                 </div>
                                                 <%}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        %>
                                             </div>
                                         </div>
                                                               </div>
                                                           </div>
                                             
                                             
                                             <div class='row mt-2'>
                                                               <div class='col-lg-3 col-md-3 col-sm-12'></div>
                                                               <div class='col-lg-9 col-md-9 col-sm-12'>
                                                                   <div class="row">
                                             <div class="col-lg-3 col-md-3 col-sm-12">
                                                  <%
                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(name) from temp_doner where org_hosp_name='"+name+"'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int td=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-primary text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h6 class="card-title">Total Temporary Doner</h6>
                                                      <p class="card-text"></p>
                                                  <a href="#" data-target="#tot_don" data-toggle="modal" class="btn btn-danger"><%=td%></a>
                                                  </div>
                                                 </div>
                                                 <%}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        %>
                                             </div>
                                             <div class="col-lg-3 col-md-3 col-sm-12">
                                                <%
                                          try{
                                           db.pstmt=db.con.prepareStatement("select sum(blood_donate) from temp_doner where org_hosp_name='"+name+"'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int bd=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-success text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h6 class="card-title">Total Available Blood Unit</h6>
                                                      <p class="card-text"></p>
                                                  <a href="#" class="btn btn-danger"><%=bd%> Unit</a>
                                                  </div>
                                                 </div>
                                                 <%}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        %>  
                                             </div>
                                             <div class="col-lg-3 col-md-3 col-sm-12">
                                                  <%
                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(camp_id) from camp where camp_org_by='"+name+"'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int tc=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-info text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h6 class="card-title">Total Camp/Couter Organized</h6>
                                                      <p class="card-text"></p>
                                                  <a href="#" data-target="#tot_camp" data-toggle="modal" class="btn btn-danger"><%=tc%></a>
                                                  </div>
                                                 </div>
                                                 <%}}
                                      
                                          catch(Exception e){
                                         e.printStackTrace();
                                           }
                                        %>
                                             </div>
                                                 <div class="col-lg-3 col-md-3 col-sm-12">
                                                      
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
                                                    
                                                    
                                                     <td><a href="delete_camp_byadmin.jsp?camp_id=<%=camp_id%>" class="btn btn-danger"><i class="fas fa-trash-alt">&nbsp;</i></a></td>
                                                     
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
                                         
                                         
                                        
                                                      <%}}
                                                     catch(Exception e){
                                                     e.printStackTrace();
                                                    }%>     
 <!--Script -->
<script src="https://kit.fontawesome.com/da8043735a.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="files/boot1.js"></script>
<script type="text/javascript" src="files/boot2.js"></script>
<script type="text/javascript" src="files/boot3.js"></script>
<script type="text/javascript" src="files/jquery.js"></script>
                                    
    </body>
</html>


