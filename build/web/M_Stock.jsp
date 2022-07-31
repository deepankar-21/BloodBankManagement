<%-- 
    Document   : Stock
    Created on : May 4, 2021, 2:35:36 PM
    Author     : Deepankar  Singh
--%>

<%@page import="DB.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    dbcon db=new dbcon();
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
                                               <a class="nav-link" href="M_Organization.jsp">Organization/Hospitals</a>
                                                    </li>
                                             <li class="nav-item">
                                           <a class="nav-link" href="M_Doners.jsp">Permanent Doner's</a>
                                             </li>
                                             <li class="nav-item">
                                           <a class="nav-link" href="M_Temp_Doner.jsp">Temporary Doner's</a>
                                             </li>
                                      <li class="nav-item">
                                    <a class="nav-link active" href="M_Stock.jsp">Stock</a>
                                         </li>
                                         </ul>
                                         </div>
                                         <div class="col-lg-9 col-md-9 col-sm-12">
                                             <h2 class="bg-dark text-white text-center">Doner Details from different Blood Groups </h2>
                                             <div class="row">
                                                 
                                             <div class="col-lg-3 col-md-3 col-sm-12">
                                     <%
                                          try{
                                           db.pstmt=db.con.prepareStatement("select count(bloodgroup) from doner where bloodgroup='A-'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int an=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-info text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h2 class="card-title">A-</h2>
                                                      <p class="card-text"></p>
                                                      <a href="A_Negative.jsp" class="btn btn-danger"><%=an%></a>
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
                                           db.pstmt=db.con.prepareStatement("select count(bloodgroup) from doner where bloodgroup='A+'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int ap=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-success text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h2 class="card-title">A+</h2>
                                                      <p class="card-text"></p>
                                                  <a href="A_Positive.jsp" class="btn btn-danger"><%=ap%></a>
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
                                           db.pstmt=db.con.prepareStatement("select count(bloodgroup) from doner where bloodgroup='AB-'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int abn=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-warning text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h2 class="card-title">AB-</h2>
                                                      <p class="card-text"></p>
                                                  <a href="AB_Negative.jsp" class="btn btn-danger"><%=abn%></a>
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
                                           db.pstmt=db.con.prepareStatement("select count(bloodgroup) from doner where bloodgroup='AB+'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int abp=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-secondary text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h2 class="card-title">AB+</h2>
                                                      <p class="card-text"></p>
                                                  <a href="AB_Positive.jsp" class="btn btn-danger"><%=abp%></a>
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
                                           db.pstmt=db.con.prepareStatement("select count(bloodgroup) from doner where bloodgroup='B-'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int bn=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-info text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h2 class="card-title">B-</h2>
                                                      <p class="card-text"></p>
                                                  <a href="B_Negative.jsp" class="btn btn-danger"><%=bn%></a>
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
                                           db.pstmt=db.con.prepareStatement("select count(bloodgroup) from doner where bloodgroup='B+'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int bp=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-success text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h2 class="card-title">B+</h2>
                                                      <p class="card-text"></p>
                                                  <a href="B_Positive.jsp" class="btn btn-danger"><%=bp%></a>
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
                                           db.pstmt=db.con.prepareStatement("select count(bloodgroup) from doner where bloodgroup='O-'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int on=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-warning text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h2 class="card-title">O-</h2>
                                                      <p class="card-text"></p>
                                                  <a href="O_Negative.jsp" class="btn btn-danger"><%=on%></a>
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
                                           db.pstmt=db.con.prepareStatement("select count(bloodgroup) from doner where bloodgroup='O+'");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int op=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-secondary text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h2 class="card-title">O+</h2>
                                                      <p class="card-text"></p>
                                                  <a href="O_Positive.jsp" class="btn btn-danger"><%=op%></a>
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
                                           db.pstmt=db.con.prepareStatement("select count(doner_name) from doner");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int pd=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-dark text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h6 class="card-title">Total Permanent Doner</h6>
                                                      <p class="card-text"></p>
                                                  <a href="M_Doners.jsp" class="btn btn-danger"><%=pd%></a>
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
                                           db.pstmt=db.con.prepareStatement("select count(name) from temp_doner");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int td=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-primary text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h6 class="card-title">Total Temporary Doner</h6>
                                                      <p class="card-text"></p>
                                                  <a href="M_Temp_Doner.jsp" class="btn btn-danger"><%=td%></a>
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
                                           db.pstmt=db.con.prepareStatement("select sum(blood_donate) from temp_doner");
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
                                           db.pstmt=db.con.prepareStatement("select count(camp_id) from camp");
                                           db.rst=db.pstmt.executeQuery();
                                          if(db.rst.next()){
                                          int tc=db.rst.getInt(1);
                                      %>
                                                 <div class="card bg-info text-white" style="width: 12rem;">
                                                <div class="card-body">
                                                   <h6 class="card-title">Total Camp/Couter Organized</h6>
                                                      <p class="card-text"></p>
                                                  <a href="#" class="btn btn-danger"><%=tc%></a>
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
 <!--Script -->
<script src="https://kit.fontawesome.com/da8043735a.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="files/boot1.js"></script>
<script type="text/javascript" src="files/boot2.js"></script>
<script type="text/javascript" src="files/boot3.js"></script>
<script type="text/javascript" src="files/jquery.js"></script>
                                    
    </body>
</html>

