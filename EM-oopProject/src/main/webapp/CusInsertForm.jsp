<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
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
<div class="col-12">
            <div class="row">
                <div class="col-10">
                    <!--Title-->
                    <p><a href="Login.jsp"> < Back to Login Page</a></p>
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
                    <form action="insertCus" method="post">
                        <div class="form-row ml-5">
                            <div class="form-group">
                              <label for="inputEmail4">Customer Name:</label>
                              <input type="cusname" class="form-control" id="inputname4" placeholder="Enter name" name="cusname">
                            </div>
                        </div>    

                        <div class="form-row ml-5">
                          <div class="form-group">
                            <label for="inputEmail4">Customer Email:</label>
                            <input type="email" class="form-control" id="inputEmail4" placeholder="Enter Email" name="email">
                          </div>
                        </div>  

                        <div class="form-row ml-5">
                            <div class="form-group">
                              <label for="inputmobile4">Customer Mobile No:</label>
                              <input type="phone" class="form-control" id="inputmobile4" placeholder="Enter mobile no" name="phone">
                            </div>
                        </div>

                        <div class="form-row ml-5">
                            <div class="form-group ">
                                <label for="inputnic4">Customer NIC:</label>
                                <input type="nic" class="form-control" id="inputnic4" placeholder="Enter NIC" name="nic">
                            </div>
                           
                           

                          <div class="form-group ml-5">
                            <label for="inputaff4">Customer Password:</label>
                            <input type="password" class="form-control" id="inputaff4" placeholder="Enter Password" name="password">
                          </div>

                        </div>   
                        <br>


                        <div class="text-center ml-5 mr-5">

                            <button type="submit" class="btn btn-primary btn-lg btn-block text-center" submit="submit">Submit</button>
                            
                                                  
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