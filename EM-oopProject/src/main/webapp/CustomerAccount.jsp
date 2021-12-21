<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Account</title>

<!--Styles-->
    <link rel="stylesheet" href="css/Userprofile.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/3.6.95/css/materialdesignicons.css">
    <link rel="stylesheet" href="css/AM.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</head>
<body>
<div class="wrapper">
        <div class="sidebar"> 
            <div class="text-muted pl-3">
                <h1>Moments</h1>
                <hr>
            </div>

            <!--Basic customer options-->
            <ul>
                <li><a href="#"><i class="fas fa-industry"></i> Dashboard</a></li>
                <li><a href="#"><i class="fas fa-check"></i>  Basic Info</a></li>
                <li><a href="#"><i class="fas fa-check"></i>  Online Event Page</a></li>
                <li><a href="#"><i class="fas fa-check"></i>  Tickets</a></li>
                <li><a href="#"><i class="fas fa-check"></i>  Publish</a></li>
               
            </ul> 
            
           
            <!--Sub options-->
            <small class="text-muted px-3">Attendee Management</small>
            <ul>
                <li><a href="#"><i class="fas fa-user-plus"></i>Add Attendees</a></li>
                
                        	<li><i class="fas fa-users"></i><form method="post" action="RetrieveAttendeesServlet"><input class="btn btn-dark" type="submit" value="Attendee List"></form></li>
                
                <li><a href="#"><i class="fas fa-list-ul"></i>Guest Lists</a></li>
            </ul>
            
            <small class="text-muted px-3">Marketing</small>
            <ul>
                <li><a href="#"><i class="fas fa-balance-scale"></i> Paid Social Ads</a></li>
                <li><a href="#"><i class="fas fa-external-link-alt"></i> Multi-Event Promo Codes</a></li>
                <li><a href="#"><i class="fas fa-share-alt"></i> Tracking Links</a></li>
            </ul> 

           
        </div>
    </div><!--End of the side navBar-->
<!--User profile details-->
    <div class="page-content page-container" id="page-content" >
        <div class="padding">
            <div class="row container d-flex justify-content-center">
                <div class="col-xl-6 col-md-12">
                    <div class="card user-card-full">
                        <div class="row m-l-0 m-r-0">
                            <div class="col-sm-4 bg-c-lite-green user-profile">
                                <div class="card-block text-center text-white">
                                    <div class="m-b-25"> </div>
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <div class="card-block">
                                
                                	<c:forEach var="cus" items="${cusDetails}">
	
										<c:set var="cusid" value="${cus.cusid}"/>
										<c:set var="cusname" value="${cus.cusname}"/>
										<c:set var="password" value="${cus.password}"/>
										<c:set var="email" value="${cus.email}"/>
										<c:set var="phone" value="${cus.phone}"/>
										<c:set var="nic" value="${cus.nic}"/>
                                    <h6 class="m-b-20 p-b-5 b-b-default f-w-600">Personal Information</h6>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <p class="m-b-10 f-w-600">Customer Name</p>
                                            <h6 class="text-muted f-w-400">${cus.cusname}</h6>
                                        </div>
                                        <div class="col-sm-6">
                                            <p class="m-b-10 f-w-600">Mobile No</p>
                                            <h6 class="text-muted f-w-400">${cus.phone}</h6>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <p class="m-b-10 f-w-600">E-mail</p>
                                            <h6 class="text-muted f-w-400">${cus.email}</h6>
                                        </div>
                                        <div class="col-sm-6">
                                            <p class="m-b-10 f-w-600">NIC</p>
                                            <h6 class="text-muted f-w-400">${cus.nic}</h6>
                                        </div>
                                    </div>
                                   
                                    <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600">Login Details</h6>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <p class="m-b-10 f-w-600">Customer ID</p>
                                            <h6 class="text-muted f-w-400">${cus.cusid}</h6>
                                        </div>
                                        <div class="col-sm-6">
                                            <p class="m-b-10 f-w-600">Password</p>
                                            <h6 class="text-muted f-w-400">${cus.password}</h6>
                                        </div>
                                        
                                    </div>
                                   	</c:forEach> 
                                   	
                                   	<c:url value="updatecustomer.jsp" var="cusupdate">
										<c:param name="cusid" value="${cusid}"/>
										<c:param name="cusname" value="${cusname}"/>
										<c:param name="email" value="${email}"/>
										<c:param name="phone" value="${phone}"/>
										<c:param name="nic" value="${nic}"/>
										<c:param name="password" value="${password}"/>
									</c:url>
                                    <a href="${cusupdate}">
									<input type="button" name="update" value="Update My Data" class="btn btn-dark"><br><br>
									</a>
									
									
									<c:url value="deletecustomer.jsp" var="cusdelete">
										<c:param name="cusid" value="${cusid}" />
										<c:param name="cusname" value="${cusname}" />
										<c:param name="email" value="${email}" />
										<c:param name="phone" value="${phone}" />
										<c:param name="nic" value="${nic}" />
										<c:param name="password" value="${password}" />
									</c:url>
									<a href="${cusdelete}">
									<input type="button" name="delete" value="Delete My Account" class="btn btn-dark">
									</a>
                                    
                                </div>
                                <img src="https://cdn.dribbble.com/users/1568450/screenshots/5430738/work_2_dribbble-01_4x.png?compress=1&resize=400x300">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

     <!--Link JS -->
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>