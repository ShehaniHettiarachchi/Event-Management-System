<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Attendee Page</title>
<!--styles-->
    <link rel="stylesheet" href="css/AM.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">


    <style>
        .logo{
            font-family:cursive;   
        }
        .text-center{
            font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        }
    </style>
    
    <!--Background image-->
    <style>
    body {
      
        background-image: url('images/image8.png');
        background-repeat: no-repeat;
        background-position-x:100%;
        background-position-y: 360px;
        background-size: 40%;
      
        
      }
    </style>
</head>
<body>
<div class="row">
        <div class="col-4">
            <div class="wrapper">
                <div class="sidebar"> 
                    <div class="text-muted pl-3">
                        <h1 class="logo">Moments</h1>
                        <hr>
                    </div>
                    <!--Side nav-->
                    <!--Basic customer options-->
                    <ul>
                        <li><a href="#"><i class="fas fa-industry"></i> Dashboard</a></li>
                        <li><a href="#"><i class="fas fa-check"></i>  Online Event Page</a></li>
                        <li><a href="#"><i class="fas fa-check"></i>  Tickets</a></li>
                        <li><a href="#"><i class="fas fa-check"></i>  Publish</a></li>
                    </ul> 
                    
                    <!--Sub options-->
                    <small class="text-muted px-3">Attendee Management</small>
                    <ul>
                        <li><a href="Attendee.html"><i class="fas fa-user-plus"></i>Add Attendees</a></li>
                        <li><a href="Attendee.html"><i class="fas fa-users"></i>Attendee List</a></li>
                        <li><a href="AM.html"><i class="fas fa-list-ul"></i>Guest Lists</a></li>
                    </ul>
                    
                    <small class="text-muted px-3">Marketing</small>
                    <ul>
                        <li><a href="#"><i class="fas fa-balance-scale"></i> Paid Social Ads</a></li>
                        <li><a href="#"><i class="fas fa-external-link-alt"></i> Multi-Event Promo Codes</a></li>
                        <li><a href="#"><i class="fas fa-share-alt"></i> Tracking Links</a></li>
                    </ul> 
                
                </div>
            </div>
        </div><!--End of the side navBar-->

        <!--AM page content-->
        <div class="col-6">
            <div class="row">
                <div class="col-10">
                    <!--Title-->
                    <p><a href="Attendee-List.jsp"> < Back to Attendee Management page</a></p>
                    <h1 class="text-center">Attendee Form</h1>
                </div>
            </div>  
        
            <br>
            <!--Form-->
            <div class="row">
                <div class="col-10">
                   <div class="border ml-3 mr-3 bg-light shadow"> 
                       <br>
                       <br>
                       
                       <%
                       	String attid = request.getParameter("attid");
                       	String attname = request.getParameter("attname");
                       	String email = request.getParameter("email");
                       	String nic = request.getParameter("nic");
                       	String mobile = request.getParameter("mobile");
                       	String affillation = request.getParameter("affillation");
                       %>
                       
                    <form action="UpdateAttendeeServlet" method="post">
                    	<div class="form-row ml-5">
                            <div class="form-group">
                              <label for="inputEmail4">Attendee ID:</label>
                              <input type="text" class="form-control" name="attid" id="inputname4" value="<%= attid %>" readonly>
                            </div>
                        </div>
                        <div class="form-row ml-5">
                            <div class="form-group">
                              <label for="inputEmail4">Attendee Name:</label>
                              <input type="name" class="form-control" name="attname" id="inputname4" value="<%= attname %>">
                            </div>
                        </div>    

                        <div class="form-row ml-5">
                          <div class="form-group">
                            <label for="inputEmail4">Attendee Email:</label>
                            <input type="email" class="form-control" name="email" id="inputEmail4" value="<%= email %>">
                          </div>
                        </div>  

                        <div class="form-row ml-5">
                            <div class="form-group">
                              <label for="inputmobile4">Attendee Mobile No:</label>
                              <input type="mobile" class="form-control" name="mobile" id="inputmobile4" value="<%= mobile %>">
                            </div>
                        </div>

                        <div class="form-row ml-5">
                            <div class="form-group ">
                                <label for="inputnic4">Attendee NIC:</label>
                                <input type="nic" class="form-control" name="nic" id="inputnic4" value="<%= nic %>">
                            </div>
                           
                           

                          <div class="form-group ml-5">
                            <label for="inputaff4">Affiliation(Optional):</label>
                            <input type="affiliation" class="form-control" name="affillation" id="inputaff4" value="<%= affillation %>">
                          </div>

                        </div>   
                        <br>


                        <div class="text-center ml-5 mr-5">

                            <button type="submit" class="btn btn-primary btn-lg btn-block text-center">Save</button>
                            
                                                  
                        </div>
                        <br>

                        <div class="text-center ml-5 mr-5">
                            <button type="button" class="btn btn-secondary btn-lg btn-block text-center" data-dismiss="modal"> Cancle</button>   

                        </div>    

                      </form> 
                      <br>
                      <br>
                   </div>
                </div>
            </div>
                    
                   
        </div><!--End of the page content-->
       

        
    </div>
   
    <!--Link JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.2/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>    
</body>
</html>